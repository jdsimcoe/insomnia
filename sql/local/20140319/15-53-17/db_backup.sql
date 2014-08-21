-- MySQL dump 10.13  Distrib 5.6.16, for osx10.9 (x86_64)
--
-- Host: localhost    Database: insomnia
-- ------------------------------------------------------
-- Server version	5.6.16

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_authors`
--

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;
INSERT INTO `sym_authors` VALUES (1,'jdsimcoe','PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==','Jonathan','Simcoe','jonathan@simko.io','2014-03-19 15:52:47','developer','yes',NULL,'no',NULL),(5,'tyler','PBKDF2v1|10000|61e5750034518ed42db4|cEmnmy/Ct/7WAnion5uLWjVFmHC8qEmhIvwsioVY5wywOHhHRp3Trw==','Tyler','Geel','theguys@insomniacoffee.co','2014-03-13 16:06:27','developer','no','7','yes',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries`
--

LOCK TABLES `sym_entries` WRITE;
/*!40000 ALTER TABLE `sym_entries` DISABLE KEYS */;
INSERT INTO `sym_entries` VALUES (88,5,1,'2013-11-27 11:11:17','2013-11-27 19:11:17','2014-02-20 11:57:12','2014-02-20 19:57:12'),(90,5,1,'2013-11-27 11:23:12','2013-11-27 19:23:12','2013-11-27 11:23:12','2013-11-27 19:23:12'),(87,5,1,'2013-11-27 11:10:47','2013-11-27 19:10:47','2014-02-20 12:00:16','2014-02-20 20:00:16'),(86,5,1,'2013-11-27 10:29:21','2013-11-27 18:29:21','2013-11-27 11:27:57','2013-11-27 19:27:57'),(85,5,1,'2013-11-27 07:30:49','2013-11-27 15:30:49','2014-02-20 11:56:36','2014-02-20 19:56:36'),(84,7,1,'2013-11-12 11:56:05','2013-11-12 19:56:05','2014-02-18 12:54:24','2014-02-18 20:54:24'),(82,7,1,'2013-11-04 13:11:10','2013-11-04 21:11:10','2014-02-19 12:01:31','2014-02-19 20:01:31'),(91,5,1,'2013-11-27 11:23:30','2013-11-27 19:23:30','2013-11-27 11:24:25','2013-11-27 19:24:25'),(159,19,1,'2014-03-14 23:08:02','2014-03-15 06:08:02','2014-03-14 23:08:02','2014-03-15 06:08:02'),(127,5,5,'2014-02-20 12:15:34','2014-02-20 20:15:34','2014-02-20 12:17:10','2014-02-20 20:17:10'),(97,18,1,'2013-11-27 15:35:37','2013-11-27 23:35:37','2014-02-19 12:24:28','2014-02-19 20:24:28'),(126,5,5,'2014-02-20 12:15:02','2014-02-20 20:15:02','2014-02-20 12:17:25','2014-02-20 20:17:25'),(100,5,1,'2013-12-03 21:09:33','2013-12-04 05:09:33','2014-02-20 11:57:40','2014-02-20 19:57:40'),(95,5,1,'2013-11-27 14:49:06','2013-11-27 22:49:06','2014-02-20 12:00:59','2014-02-20 20:00:59'),(81,7,1,'2013-11-04 11:56:04','2013-11-04 19:56:04','2014-02-20 11:52:25','2014-02-20 19:52:25'),(80,7,1,'2013-11-04 11:53:00','2013-11-04 19:53:00','2014-02-18 12:59:45','2014-02-18 20:59:45'),(79,7,1,'2013-11-04 11:52:07','2013-11-04 19:52:07','2014-02-19 12:18:58','2014-02-19 20:18:58'),(121,17,1,'2014-02-18 16:50:47','2014-02-19 00:50:47','2014-02-19 11:58:17','2014-02-19 19:58:17'),(94,5,1,'2013-11-27 14:06:40','2013-11-27 22:06:40','2014-02-20 12:01:40','2014-02-20 20:01:40'),(145,18,5,'2014-02-28 16:52:55','2014-03-01 00:52:55','2014-03-13 16:02:15','2014-03-13 23:02:15'),(125,5,5,'2014-02-20 12:14:38','2014-02-20 20:14:38','2014-02-20 12:17:36','2014-02-20 20:17:36'),(93,5,1,'2013-11-27 14:03:39','2013-11-27 22:03:39','2013-11-27 14:03:39','2013-11-27 22:03:39'),(118,18,5,'2014-02-18 13:45:28','2014-02-18 21:45:28','2014-02-19 12:22:43','2014-02-19 20:22:43'),(119,17,5,'2014-02-18 16:36:54','2014-02-19 00:36:54','2014-02-18 16:54:06','2014-02-19 00:54:06'),(92,5,1,'2013-11-27 11:24:47','2013-11-27 19:24:47','2013-11-27 11:24:47','2013-11-27 19:24:47'),(120,17,1,'2014-02-18 16:44:27','2014-02-19 00:44:27','2014-02-19 10:34:48','2014-02-19 18:34:48'),(89,17,1,'2013-11-27 11:14:19','2013-11-27 19:14:19','2014-02-19 12:05:41','2014-02-19 20:05:41'),(101,5,1,'2013-12-03 21:12:34','2013-12-04 05:12:34','2013-12-03 21:12:34','2013-12-04 05:12:34'),(102,5,1,'2013-12-03 21:14:13','2013-12-04 05:14:13','2014-02-20 11:57:25','2014-02-20 19:57:25'),(103,5,1,'2013-12-03 21:16:51','2013-12-04 05:16:51','2014-02-20 12:01:27','2014-02-20 20:01:27'),(104,5,1,'2013-12-03 21:19:02','2013-12-04 05:19:02','2014-02-20 12:01:08','2014-02-20 20:01:08'),(106,5,1,'2013-12-03 21:22:24','2013-12-04 05:22:24','2013-12-03 21:22:24','2013-12-04 05:22:24'),(150,19,1,'2014-03-06 10:05:40','2014-03-06 18:05:40','2014-03-06 10:05:40','2014-03-06 18:05:40'),(155,18,5,'2014-03-13 16:04:31','2014-03-13 23:04:31','2014-03-13 16:04:31','2014-03-13 23:04:31'),(110,18,1,'2013-12-04 14:44:30','2013-12-04 22:44:30','2014-03-13 16:01:07','2014-03-13 23:01:07'),(123,5,5,'2014-02-19 11:54:03','2014-02-19 19:54:03','2014-02-19 11:54:03','2014-02-19 19:54:03'),(151,19,1,'2014-03-06 13:47:32','2014-03-06 21:47:32','2014-03-06 13:47:32','2014-03-06 21:47:32'),(152,19,1,'2014-03-07 18:51:14','2014-03-08 02:51:14','2014-03-07 18:51:14','2014-03-08 02:51:14'),(153,19,1,'2014-03-10 18:58:59','2014-03-11 01:58:59','2014-03-10 18:58:59','2014-03-11 01:58:59'),(148,19,1,'2014-03-03 20:43:52','2014-03-04 04:43:52','2014-03-03 20:43:52','2014-03-04 04:43:52'),(149,19,1,'2014-03-03 21:19:33','2014-03-04 05:19:33','2014-03-03 21:19:33','2014-03-04 05:19:33'),(154,19,1,'2014-03-13 09:39:36','2014-03-13 16:39:36','2014-03-13 09:39:36','2014-03-13 16:39:36'),(143,19,1,'2014-02-28 15:50:56','2014-02-28 23:50:56','2014-02-28 15:50:56','2014-02-28 23:50:56'),(156,19,1,'2014-03-13 22:37:25','2014-03-14 05:37:25','2014-03-13 22:37:25','2014-03-14 05:37:25'),(157,19,1,'2014-03-14 08:42:13','2014-03-14 15:42:13','2014-03-14 08:42:13','2014-03-14 15:42:13'),(158,19,1,'2014-03-14 13:24:41','2014-03-14 20:24:41','2014-03-14 13:24:41','2014-03-14 20:24:41'),(146,19,1,'2014-03-02 10:26:02','2014-03-02 18:26:02','2014-03-02 10:26:02','2014-03-02 18:26:02'),(147,19,1,'2014-03-02 16:33:37','2014-03-03 00:33:37','2014-03-02 16:33:37','2014-03-03 00:33:37'),(160,19,1,'2014-03-15 09:42:25','2014-03-15 16:42:25','2014-03-15 09:42:25','2014-03-15 16:42:25'),(161,19,1,'2014-03-15 11:23:00','2014-03-15 18:23:00','2014-03-15 11:23:00','2014-03-15 18:23:00'),(162,19,1,'2014-03-18 17:01:18','2014-03-19 00:01:18','2014-03-18 17:01:18','2014-03-19 00:01:18'),(163,19,1,'2014-03-19 13:34:18','2014-03-19 20:34:18','2014-03-19 13:34:18','2014-03-19 20:34:18'),(164,19,1,'2014-03-19 14:05:48','2014-03-19 21:05:48','2014-03-19 14:05:48','2014-03-19 21:05:48'),(165,18,1,'2014-03-19 15:49:44','2014-03-19 22:49:44','2014-03-19 15:49:44','2014-03-19 22:49:44');
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
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_100`
--

LOCK TABLES `sym_entries_data_100` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_100` DISABLE KEYS */;
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
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=114 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_101`
--

LOCK TABLES `sym_entries_data_101` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_101` DISABLE KEYS */;
INSERT INTO `sym_entries_data_101` VALUES (95,119,92),(113,89,123),(103,120,90),(108,121,91);
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
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_102`
--

LOCK TABLES `sym_entries_data_102` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_102` DISABLE KEYS */;
INSERT INTO `sym_entries_data_102` VALUES (83,121,'503-352-5371','(503) 352-5371'),(78,120,'503-436-4164','(503) 436-4164'),(70,119,'503-601-4314','(503) 601-4314'),(88,89,'503-716-0839','(503) 716-0839');
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
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_103`
--

LOCK TABLES `sym_entries_data_103` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_103` DISABLE KEYS */;
INSERT INTO `sym_entries_data_103` VALUES (86,121,'Monday-Friday: 6am-10pm<br/>\r\nSaturday: 7am-10pm<br/>\r\nSunday: 8am-5pm','<p>Monday-Friday: 6am-10pm<br/>\nSaturday: 7am-10pm<br/>\nSunday: 8am-5pm</p>\n'),(73,119,'Monday-Friday: 6am-10pm<br/>\r\nSaturday: 7am-10pm<br/>\r\nSunday: 8am-5pm','<p>Monday-Friday: 6am-10pm<br/>\nSaturday: 7am-10pm<br/>\nSunday: 8am-5pm</p>\n'),(81,120,'Everyday: 8am-5pm  \r\n<br/>\r\n<br/>','<p>Everyday: 8am-5pm<br />\n<br/>\n<br/></p>\n'),(91,89,'Monday-Saturday: 8am-1pm  \r\nSunday: Closed  \r\n<br/>','<p>Monday-Saturday: 8am-1pm<br />\nSunday: Closed<br />\n<br/></p>\n');
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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_104`
--

LOCK TABLES `sym_entries_data_104` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_104` DISABLE KEYS */;
INSERT INTO `sym_entries_data_104` VALUES (29,145,'weekend-live-music-3-21-3-22','WEEKEND LIVE MUSIC 3/21, 3/22'),(24,97,'public-coffee-cupping-class','Public Coffee Cupping Class'),(28,110,'weekend-live-music-3-14-3-15','Weekend Live Music 3/14, 3/15'),(23,118,'brewmasters-series-class-aeropress','Brewmasters Series Class: Aeropress'),(30,155,'weekend-live-music-4-4-4-5','Weekend Live Music 4/4, 4/5'),(31,165,'do-not-delete','Do Not Delete');
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
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_105`
--

LOCK TABLES `sym_entries_data_105` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_105` DISABLE KEYS */;
INSERT INTO `sym_entries_data_105` VALUES (45,155,'2014-04-04 19:00:00','2014-04-04 19:00:00'),(44,145,'2014-03-22 19:00:00','2014-03-22 19:00:00'),(33,118,'2014-03-29 14:00:00','2014-03-29 14:00:00'),(34,97,'2014-03-19 14:00:00','2014-03-19 14:00:00'),(42,110,'2014-03-15 19:00:00','2014-03-15 19:00:00'),(41,110,'2014-03-14 19:00:00','2014-03-14 19:00:00'),(43,145,'2014-03-21 19:00:00','2014-03-21 19:00:00'),(46,155,'2014-04-05 19:00:00','2014-04-05 19:00:00'),(47,165,'1776-07-07 16:00:00','1776-07-07 16:00:00');
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
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_106`
--

LOCK TABLES `sym_entries_data_106` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_106` DISABLE KEYS */;
INSERT INTO `sym_entries_data_106` VALUES (29,145,'FRIDAY NIGHT:<br/>\r\nTim Uecker\r\n\r\nSATURDAY NIGHT:<br/>\r\nPete Pickering','<p>FRIDAY NIGHT:<br/>\nTim Uecker</p>\n\n<p>SATURDAY NIGHT:<br/>\nPete Pickering</p>\n'),(30,155,'FRIDAY NIGHT:<br/>\r\n\r\n\r\nSATURDAY NIGHT:<br/>\r\nHillsboro Teen Idol Top Ten','<p>FRIDAY NIGHT:<br/></p>\n\n<p>SATURDAY NIGHT:<br/>\nHillsboro Teen Idol Top Ten</p>\n'),(28,110,'FRIDAY NIGHT:<br/>\r\n\r\n\r\nSATURDAY NIGHT:<br/>\r\nDennis Dias\r\n','<p>FRIDAY NIGHT:<br/></p>\n\n<p>SATURDAY NIGHT:<br/>\nDennis Dias</p>\n'),(24,97,'FREE! Experience the intricacies of high-end coffee and learn the procedures roasters employ to taste freshly roasted coffee.  Sign ups are located at the Dapper & Wise Tasting room.','<p>FREE! Experience the intricacies of high-end coffee and learn the procedures roasters employ to taste freshly roasted coffee.  Sign ups are located at the Dapper &amp; Wise Tasting room.</p>\n'),(23,118,'FEE $5 - Come learn the proper and improper ways to brew coffee with an Aeropress.  Sign-ups are at the Dapper & Wise Tasting Room.','<p>FEE $5 - Come learn the proper and improper ways to brew coffee with an Aeropress.  Sign-ups are at the Dapper &amp; Wise Tasting Room.</p>\n'),(31,165,'Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit.','<p>Vestibulum id ligula porta felis euismod semper. Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>\n');
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
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_107`
--

LOCK TABLES `sym_entries_data_107` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_107` DISABLE KEYS */;
INSERT INTO `sym_entries_data_107` VALUES (30,155,NULL),(29,145,NULL),(23,118,NULL),(24,97,NULL),(28,110,NULL),(31,165,NULL);
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
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_108`
--

LOCK TABLES `sym_entries_data_108` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_108` DISABLE KEYS */;
INSERT INTO `sym_entries_data_108` VALUES (30,155,119),(29,145,119),(23,118,89),(24,97,89),(28,110,119),(31,165,119);
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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_109`
--

LOCK TABLES `sym_entries_data_109` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_109` DISABLE KEYS */;
INSERT INTO `sym_entries_data_109` VALUES (86,79,'who-we-are','who we are'),(87,81,'things-we-do','things we do'),(75,80,'get-in-touch','get in touch'),(81,82,'where-we-brew','where we brew'),(71,84,'you-are-here','you are here');
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
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_110`
--

LOCK TABLES `sym_entries_data_110` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_110` DISABLE KEYS */;
INSERT INTO `sym_entries_data_110` VALUES (26,85,119),(27,88,119),(30,87,121),(4,86,74),(5,93,73),(34,94,120),(31,95,120),(39,126,89),(40,125,89),(29,100,121),(11,101,74),(28,102,119),(33,103,120),(32,104,120),(17,106,89),(25,123,NULL),(38,127,89);
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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_111`
--

LOCK TABLES `sym_entries_data_111` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_111` DISABLE KEYS */;
INSERT INTO `sym_entries_data_111` VALUES (84,89,'no'),(74,120,'no'),(66,119,'no'),(79,121,'no');
/*!40000 ALTER TABLE `sym_entries_data_111` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_112`
--

DROP TABLE IF EXISTS `sym_entries_data_112`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_112` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_112`
--

LOCK TABLES `sym_entries_data_112` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_112` DISABLE KEYS */;
INSERT INTO `sym_entries_data_112` VALUES (70,121,'#FCD04B'),(57,119,'#D9433C'),(75,89,'#BBCF5F'),(65,120,'#8285ab');
/*!40000 ALTER TABLE `sym_entries_data_112` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_113`
--

DROP TABLE IF EXISTS `sym_entries_data_113`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_113` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=73 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_113`
--

LOCK TABLES `sym_entries_data_113` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_113` DISABLE KEYS */;
INSERT INTO `sym_entries_data_113` VALUES (62,120,3),(54,119,1),(67,121,2),(72,89,4);
/*!40000 ALTER TABLE `sym_entries_data_113` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_114`
--

DROP TABLE IF EXISTS `sym_entries_data_114`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_114` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_114`
--

LOCK TABLES `sym_entries_data_114` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_114` DISABLE KEYS */;
INSERT INTO `sym_entries_data_114` VALUES (18,118,'no'),(19,97,'no'),(24,145,'no'),(23,110,'no'),(25,155,'no'),(26,165,'no');
/*!40000 ALTER TABLE `sym_entries_data_114` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_115`
--

DROP TABLE IF EXISTS `sym_entries_data_115`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_115` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_115`
--

LOCK TABLES `sym_entries_data_115` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_115` DISABLE KEYS */;
INSERT INTO `sym_entries_data_115` VALUES (28,149,'elle-alvarado','Elle Alvarado'),(29,150,'martina-pedersen','Martina Pedersen'),(30,151,'stephanie-engle','Stephanie Engle'),(31,152,'karen','Karen'),(32,153,'karen','Karen'),(33,154,'jan-sherrick','Jan Sherrick'),(34,156,'edward-wen','Edward Wen'),(24,143,'jonathan-simcoe','Jonathan Simcoe'),(25,146,'ruth-klein','Ruth Klein'),(26,147,'brandon-abueg','Brandon Abueg'),(27,148,'ryan-aiello','Ryan Aiello'),(35,157,'freddy-trujillo','Freddy Trujillo'),(36,158,'molly-mcindoo','Molly McIndoo'),(37,159,'madeline-turner','Madeline Turner'),(38,160,'amythest-davis','Amythest Davis '),(39,161,'kimberlie-kimbriel','Kimberlie Kimbriel'),(40,162,'jeremy-probst','Jeremy Probst'),(41,163,'sony-felberg','Sony Felberg'),(42,164,'leslie-r-langford','Leslie R. Langford');
/*!40000 ALTER TABLE `sym_entries_data_115` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_116`
--

DROP TABLE IF EXISTS `sym_entries_data_116`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_116` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_116`
--

LOCK TABLES `sym_entries_data_116` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_116` DISABLE KEYS */;
INSERT INTO `sym_entries_data_116` VALUES (35,157,'frederale-msncom','Frederale@msn.com'),(30,151,'stephengle13-gmailcom','stephengle13@gmail.com'),(31,152,'donoghuekaren1976-yahoocom','donoghue.karen1976@yahoo.com'),(32,153,'donoghuekaren1976-yahoocom','donoghue.karen1976@yahoo.com'),(33,154,'sjan-wcpsolutionscom','sjan@wcpsolutions.com'),(34,156,'sales-hongyihomewarecom','sales@hongyihomeware.com'),(24,143,'jdsimcoe-gmailcom','jdsimcoe@gmail.com'),(25,146,'ruthsus-gmailcom','ruthsus@gmail.com'),(26,147,'abuegb-gmailcom','abuegb@gmail.com'),(27,148,'illlucidonset-gmailcom','IllLucidOnset@gmail.com'),(28,149,'ellealvar-gmailcom','ellealvar@gmail.com'),(29,150,'martilebleu-yahoocom','martilebleu@yahoo.com'),(36,158,'mollyjeane-yahoocom','MollyJeane@yahoo.com'),(37,159,'madelinemturner-yahoocom','madelinem.turner@yahoo.com'),(38,160,'amythestdavis-gmailcom','Amythestdavis@gmail.com'),(39,161,'principaltrucking-gmailcom','principaltrucking@gmail.com'),(40,162,'jprobst505-gmailcom','jprobst505@gmail.com'),(41,163,'sonyfelberg-gmailcom','sonyfelberg@Gmail.com'),(42,164,'snllangfordhome-gmailcom','snl.langfordhome@gmail.com');
/*!40000 ALTER TABLE `sym_entries_data_116` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_entries_data_117`
--

DROP TABLE IF EXISTS `sym_entries_data_117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_entries_data_117` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_117`
--

LOCK TABLES `sym_entries_data_117` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_117` DISABLE KEYS */;
INSERT INTO `sym_entries_data_117` VALUES (34,156,'8613100337257','+8613100337257'),(28,149,'5036868991','5036868991'),(29,150,'503-805-4139','503-805-4139'),(30,151,'503-997-0388','503-997-0388'),(31,152,'888-233-0877','888-233-0877'),(32,153,'888-233-0877','888-233-0877'),(33,154,'503-544-9493','503-544-9493'),(24,143,'555-555-5555','555-555-5555'),(25,146,'5033196792','5033196792'),(26,147,'5033295950','5033295950'),(27,148,'5038046821','503.804.6821'),(35,157,'503-381-2667','503 381-2667'),(36,158,'360-521-9695','360-521-9695'),(37,159,'503-853-4412','503-853-4412'),(38,160,'9712757322','9712757322'),(39,161,'5038478416','5038478416'),(40,162,'5035470722','5035470722'),(41,163,'2066012943','2066012943'),(42,164,'503-642-1488-h-503-314-3016-c','503 642-1488 H. 503 314-3016 C.');
/*!40000 ALTER TABLE `sym_entries_data_117` ENABLE KEYS */;
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
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_118`
--

LOCK TABLES `sym_entries_data_118` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_118` DISABLE KEYS */;
INSERT INTO `sym_entries_data_118` VALUES (34,156,'general-inquiry','General Inquiry'),(29,150,'general-inquiry','General Inquiry'),(30,151,'general-inquiry','General Inquiry'),(31,152,'general-inquiry','General Inquiry'),(32,153,'general-inquiry','General Inquiry'),(33,154,'general-inquiry','General Inquiry'),(24,143,'coffee-question','Coffee Question'),(25,146,'suggestion','Suggestion'),(26,147,'general-inquiry','General Inquiry'),(27,148,'general-inquiry','General Inquiry'),(28,149,'distribution-sales','Distribution/Sales'),(35,157,'general-inquiry','General Inquiry'),(36,158,'general-inquiry','General Inquiry'),(37,159,'general-inquiry','General Inquiry'),(38,160,'general-inquiry','General Inquiry'),(39,161,'distribution-sales','Distribution/Sales'),(40,162,'dapper-wise-roasters','Dapper + Wise Roasters'),(41,163,'distribution-sales','Distribution/Sales'),(42,164,'general-inquiry','General Inquiry');
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
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_119`
--

LOCK TABLES `sym_entries_data_119` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_119` DISABLE KEYS */;
INSERT INTO `sym_entries_data_119` VALUES (31,152,'What if I told you that I can get you: \r\n \r\nMillions of Facebook page likes, \r\nTwitter Followers, retweets, \r\nyoutube views, favorites, \r\ninstagram Followers, likes, \r\nvine Followers, revines, \r\ngoogle+ Followers, \r\nwebsite visitors \r\netc. \r\n \r\nfor a very cheap price. \r\n \r\nThere\'s no limit on which account you want likes and Followers for. \r\nAnd here\'s the best part, we don\'t deliver thousands of fake \r\nfans overnight. We get them to you naturally, by the hour, \r\nyou will get naturally organic looking fans on social media. \r\n \r\nPlease check out my website at: \r\nhttp://adf.ly/ek6EV \r\n \r\nI promise the best social media service around!','<p>What if I told you that I can get you:</p>\n\n<p>Millions of Facebook page likes, \nTwitter Followers, retweets, \nyoutube views, favorites, \ninstagram Followers, likes, \nvine Followers, revines, \ngoogle+ Followers, \nwebsite visitors \netc.</p>\n\n<p>for a very cheap price.</p>\n\n<p>There&#8217;s no limit on which account you want likes and Followers for. \nAnd here&#8217;s the best part, we don&#8217;t deliver thousands of fake \nfans overnight. We get them to you naturally, by the hour, \nyou will get naturally organic looking fans on social media.</p>\n\n<p>Please check out my website at: \nhttp://adf.ly/ek6EV</p>\n\n<p>I promise the best social media service around!</p>\n'),(32,153,'What if I told you that I can get you: \r\n \r\nMillions of Facebook page likes, \r\nTwitter Followers, retweets, \r\nyoutube views, favorites, \r\ninstagram Followers, likes, \r\nvine Followers, revines, \r\ngoogle+ Followers, \r\nwebsite visitors \r\netc. \r\n \r\nfor a very cheap price. \r\n \r\nThere\'s no limit on which account you want likes and Followers for. \r\nAnd here\'s the best part, we don\'t deliver thousands of fake \r\nfans overnight. We get them to you naturally, by the hour, \r\nyou will get naturally organic looking fans on social media. \r\n \r\nPlease check out my website at: \r\nhttp://adf.ly/ek6EV \r\n \r\nI promise the best social media service around!','<p>What if I told you that I can get you:</p>\n\n<p>Millions of Facebook page likes, \nTwitter Followers, retweets, \nyoutube views, favorites, \ninstagram Followers, likes, \nvine Followers, revines, \ngoogle+ Followers, \nwebsite visitors \netc.</p>\n\n<p>for a very cheap price.</p>\n\n<p>There&#8217;s no limit on which account you want likes and Followers for. \nAnd here&#8217;s the best part, we don&#8217;t deliver thousands of fake \nfans overnight. We get them to you naturally, by the hour, \nyou will get naturally organic looking fans on social media.</p>\n\n<p>Please check out my website at: \nhttp://adf.ly/ek6EV</p>\n\n<p>I promise the best social media service around!</p>\n'),(33,154,'Hello Evan & Tyler, \r\n\r\nI am with a family owned distributor here in Portland. I was wondering\r\nif you would mind me quoting your hot cups & cold cups? We stock Solo\r\nas well as IP hot cups. We deliver your area daily & do not charge freight. \r\nAny opportunity would be greatly appreciated. Thank you! \r\n\r\nJan Sherrick \r\nWCP Solutions\r\n503-544-9493','<p>Hello Evan &amp; Tyler,</p>\n\n<p>I am with a family owned distributor here in Portland. I was wondering\nif you would mind me quoting your hot cups &amp; cold cups? We stock Solo\nas well as IP hot cups. We deliver your area daily &amp; do not charge freight. \nAny opportunity would be greatly appreciated. Thank you!</p>\n\n<p>Jan Sherrick \nWCP Solutions\n503-544-9493</p>\n'),(34,156,'Dear sir or madam\r\n \r\nI\'m pleased to learn that you\'re running a large coffee store, I\'m writing to ask if you have any need of ceramic cups, bowls, plates or something? \r\n\r\nWe are an innovative ceramic manufacturing company based in Liling, Hunan China, specializing in manufacture and supply of low-carbon, eco-friendly and energe-saving ceramic products including ceramic mugs, bowls, tableware sets etc. and all items can be customized to the needs of customers. we have excellent technicians offering technical support for our products.\r\n\r\nIf you\'re interested in our products, please feel free to contact us.\r\n\r\nBest regards\r\n\r\nEdward Wen\r\nSalesDepartment \r\nLILING HIGH CLOUD CERAMICS INDUSTRIAL CO., LTD\r\nAdd.: Banshan Huangniao, Liling, Hunan China\r\nE-mail:sales@hongyihomeware.com\r\nMobile: +8613100337257\r\nTel.:+86073123048511\r\nFax:+8607312304851\r\n','<p>Dear sir or madam</p>\n\n<p>I&#8217;m pleased to learn that you&#8217;re running a large coffee store, I&#8217;m writing to ask if you have any need of ceramic cups, bowls, plates or something?</p>\n\n<p>We are an innovative ceramic manufacturing company based in Liling, Hunan China, specializing in manufacture and supply of low-carbon, eco-friendly and energe-saving ceramic products including ceramic mugs, bowls, tableware sets etc. and all items can be customized to the needs of customers. we have excellent technicians offering technical support for our products.</p>\n\n<p>If you&#8217;re interested in our products, please feel free to contact us.</p>\n\n<p>Best regards</p>\n\n<p>Edward Wen\nSalesDepartment \nLILING HIGH CLOUD CERAMICS INDUSTRIAL CO., LTD\nAdd.: Banshan Huangniao, Liling, Hunan China\nE-mail:sales@hongyihomeware.com\nMobile: +8613100337257\nTel.:+86073123048511\nFax:+8607312304851</p>\n'),(24,143,'Why is Tonx better than your coffee?','<p>Why is Tonx better than your coffee?</p>\n'),(25,146,'Hello folks,\r\n\r\nWould you consider a drink suggestion.  I think its brilliant :P   How about a mocha for grown ups:  Dark Mocha...its a little less sweet with more chocolate depth.  Look at all the amazing small batch chocolate makers out there but the drink has stayed the same.     Thanks, -R','<p>Hello folks,</p>\n\n<p>Would you consider a drink suggestion.  I think its brilliant :P   How about a mocha for grown ups:  Dark Mocha&#8230;its a little less sweet with more chocolate depth.  Look at all the amazing small batch chocolate makers out there but the drink has stayed the same.     Thanks, -R</p>\n'),(26,147,'To whom it may concern, \r\nI just wanted to confirm that open mic goes on every Friday at the baseline location. \r\n\r\n- Brandon','<p>To whom it may concern, \nI just wanted to confirm that open mic goes on every Friday at the baseline location.</p>\n\n<ul>\n<li>Brandon</li>\n</ul>\n'),(27,148,'Greetings,\r\n\r\nWe\'re interested in booking a show at Insomnia Coffee. We\'ve played a couple shows awhile back at the Baseline shop. We\'re open to playing at other locations as well as we know you\'ve expanded a bit. We can perform a variety of sets including acoustic, instrumental and something more modern rock. We\'d really like to continue to push our newly recorded album which was just released January 31st, 2014. \r\n\r\nBelow are links to our information and sound:\r\n\r\nwww.reverbnation.com/IllLucidOnset \r\nwww.IllLucidOnset.com \r\nwww.facebook.com/IllLucidOnset \r\nwww.twitter.com/IllLucidOnset \r\nwww.myspace.com/IllLucidOnset \r\n\r\n\r\nWe\'re confident to put on a great show and depending on the dates may be able to bring some other Portland based bands or are happy to join a show you\'ve already scheduled if the genre\'s fit. If you\'re interested we are looking to fill one of the following dates: \r\n\r\n\r\nFri./Sat., May 9th/10th, 2014\r\nFri./Sat., May 23rd/24th, 2014\r\nSat., June 7th, 2014\r\nFri./Sat., June 20th/21st, 2014\r\nFri./Sat., July 18th/19th, 2014\r\nFri./Sat., August 1st/2nd, 2014\r\nFri./Sat., August 15th/16th, 2014\r\nFri./Sat., August 29th/30th, 2014\r\n\r\n\r\nWe would truly appreciate the opportunity. Let me know if there is any additional information I can provide you in support of booking a show with ILL LUCID ONSET. \r\n\r\nI look forward in hearing from you\r\n\r\nRyan Aiello\r\nILL LUCID ONSET\r\n503.804.6821\r\nIllLucidOnset@gmail.com','<p>Greetings,</p>\n\n<p>We&#8217;re interested in booking a show at Insomnia Coffee. We&#8217;ve played a couple shows awhile back at the Baseline shop. We&#8217;re open to playing at other locations as well as we know you&#8217;ve expanded a bit. We can perform a variety of sets including acoustic, instrumental and something more modern rock. We&#8217;d really like to continue to push our newly recorded album which was just released January 31st, 2014.</p>\n\n<p>Below are links to our information and sound:</p>\n\n<p>www.reverbnation.com/IllLucidOnset \nwww.IllLucidOnset.com \nwww.facebook.com/IllLucidOnset \nwww.twitter.com/IllLucidOnset \nwww.myspace.com/IllLucidOnset</p>\n\n<p>We&#8217;re confident to put on a great show and depending on the dates may be able to bring some other Portland based bands or are happy to join a show you&#8217;ve already scheduled if the genre&#8217;s fit. If you&#8217;re interested we are looking to fill one of the following dates:</p>\n\n<p>Fri./Sat., May 9th/10th, 2014\nFri./Sat., May 23rd/24th, 2014\nSat., June 7th, 2014\nFri./Sat., June 20th/21st, 2014\nFri./Sat., July 18th/19th, 2014\nFri./Sat., August 1st/2nd, 2014\nFri./Sat., August 15th/16th, 2014\nFri./Sat., August 29th/30th, 2014</p>\n\n<p>We would truly appreciate the opportunity. Let me know if there is any additional information I can provide you in support of booking a show with ILL LUCID ONSET.</p>\n\n<p>I look forward in hearing from you</p>\n\n<p>Ryan Aiello\nILL LUCID ONSET\n503.804.6821\nIllLucidOnset@gmail.com</p>\n'),(28,149,'Hi, Insomnia Coffee Co! I was wondering if there are any available work positions in the aloha or hillsboro area? Because I am currently preparing to go to college within the next year and am trying to find a job to start earning money for college. If you could let me know if there is an application I need to sign or any available jobs, that would be great! Thanks!','<p>Hi, Insomnia Coffee Co! I was wondering if there are any available work positions in the aloha or hillsboro area? Because I am currently preparing to go to college within the next year and am trying to find a job to start earning money for college. If you could let me know if there is an application I need to sign or any available jobs, that would be great! Thanks!</p>\n'),(29,150,'Hi there.\r\nAs an avid Insomnia drinker, I submitted a letter for fundraising a week ago to your Baseline location. I am raising money for Providence Cancer Research and Hood to Coast team \"Mustaches and Miniskirts.\" It would love to wear your logo on my T-shirt or on our team vans (or a temporary tattoo) through team sponsorship. \r\n\r\nPlease let me know if you have questions. I hope I can count on your help.\r\n\r\nCheers to beating cancer!\r\n\r\nMartina Pedersen','<p>Hi there.\nAs an avid Insomnia drinker, I submitted a letter for fundraising a week ago to your Baseline location. I am raising money for Providence Cancer Research and Hood to Coast team &#8220;Mustaches and Miniskirts.&#8221; It would love to wear your logo on my T-shirt or on our team vans (or a temporary tattoo) through team sponsorship.</p>\n\n<p>Please let me know if you have questions. I hope I can count on your help.</p>\n\n<p>Cheers to beating cancer!</p>\n\n<p>Martina Pedersen</p>\n'),(30,151,'Hello. My name is Stephanie Engle and I was curious if there are any current barista positions opening up at the Tanasbourne location. And if so, how might I apply. If you could contact me via email or phone, that would be greatly appreciated. Thank you.\r\n\r\nStephanie Engle','<p>Hello. My name is Stephanie Engle and I was curious if there are any current barista positions opening up at the Tanasbourne location. And if so, how might I apply. If you could contact me via email or phone, that would be greatly appreciated. Thank you.</p>\n\n<p>Stephanie Engle</p>\n'),(35,157,'I was told about your coffee house when talking to a friend from Hillsboro about place to play music. I play with a band mostly but sometimes the keyboard player and I do duos acoustic. Is your place a tips only kind of place or do you offer money? Below is a commercial for my latest record. Check it out and let me know what my options are. I am really reaching to hit new audiences.\r\nhttp://www.youtube.com/watch?v=HfyRrFX1d6A','<p>I was told about your coffee house when talking to a friend from Hillsboro about place to play music. I play with a band mostly but sometimes the keyboard player and I do duos acoustic. Is your place a tips only kind of place or do you offer money? Below is a commercial for my latest record. Check it out and let me know what my options are. I am really reaching to hit new audiences.\nhttp://www.youtube.com/watch?v=HfyRrFX1d6A</p>\n'),(36,158,'Hello, my name is Molly McIndoo. I am a film maker and am making a film in the coming year. I love your Hillsboro location. I was wondering if you allow people to film in your shops, perhaps when you\'re closed? And if you do how much that would cost? Thank you for taking time out of your busy day to read this. Have a wonderful day! \r\n\r\n-Molly McIndoo','<p>Hello, my name is Molly McIndoo. I am a film maker and am making a film in the coming year. I love your Hillsboro location. I was wondering if you allow people to film in your shops, perhaps when you&#8217;re closed? And if you do how much that would cost? Thank you for taking time out of your busy day to read this. Have a wonderful day!</p>\n\n<p>-Molly McIndoo</p>\n'),(37,159,'Tonight (3.14.14) my friends and I sat and enjoyed live music at your location on baseline. A guy named David Nielson played and we enjoyed his music, but when we went to look him up on Facebook like he said we could not find him. We were all wondering if you know what his page is called or if we misspelled his name. Thank you for your time.  ','<p>Tonight (3.14.14) my friends and I sat and enjoyed live music at your location on baseline. A guy named David Nielson played and we enjoyed his music, but when we went to look him up on Facebook like he said we could not find him. We were all wondering if you know what his page is called or if we misspelled his name. Thank you for your time.</p>\n'),(38,160,'First I would just like to say that I love your location by the boom fitness. The atmosphere is awesome and all of the staff rocks! I have been considering applying there because of how much I love being there already! I also wanted to ask about the live music? I saw a sign on the door for open call but I was in a hurry and did not catch where I was supposed to apply? Thank you so much for everything! ','<p>First I would just like to say that I love your location by the boom fitness. The atmosphere is awesome and all of the staff rocks! I have been considering applying there because of how much I love being there already! I also wanted to ask about the live music? I saw a sign on the door for open call but I was in a hurry and did not catch where I was supposed to apply? Thank you so much for everything!</p>\n'),(39,161,'Hello!\r\n\r\nWe are long time customers of the insomnia coffee store in Orenco station. We love the little shop you have and the coffee is fantastic!\r\n\r\nI am a small business owner and I am looking to expand more into my background. I am a Western Culinary Institute graduate in 2009. \r\n\r\nI am starting to offer my granola to the area. I have a small project on kickstarter going that went up yesterday and it has more information than I can offer you in this text box. The idea is that is it as locally sourced and as organic as possible. \r\n\r\nI really think this product would be a good fit for your store. \r\n\r\nIf you are interested the best place to reach me would be principaltrucking@gmail.com (my other business) or drop me a call. Below is a link to my kickstarter so you can see some photos of what I am offering.\r\n\r\nFor your store I think offering these in see through pint or half pint containers would be best. \r\n\r\nhttps://www.kickstarter.com/projects/722519324/granola-for-life\r\n\r\nThank you very much for your time\r\nKim','<p>Hello!</p>\n\n<p>We are long time customers of the insomnia coffee store in Orenco station. We love the little shop you have and the coffee is fantastic!</p>\n\n<p>I am a small business owner and I am looking to expand more into my background. I am a Western Culinary Institute graduate in 2009.</p>\n\n<p>I am starting to offer my granola to the area. I have a small project on kickstarter going that went up yesterday and it has more information than I can offer you in this text box. The idea is that is it as locally sourced and as organic as possible.</p>\n\n<p>I really think this product would be a good fit for your store.</p>\n\n<p>If you are interested the best place to reach me would be principaltrucking@gmail.com (my other business) or drop me a call. Below is a link to my kickstarter so you can see some photos of what I am offering.</p>\n\n<p>For your store I think offering these in see through pint or half pint containers would be best.</p>\n\n<p>https://www.kickstarter.com/projects/722519324/granola-for-life</p>\n\n<p>Thank you very much for your time\nKim</p>\n'),(40,162,'Evan and Tyler,\r\n  My name is Jeremy Probst and I am the sponsorship/fundraising coordinator for Glencoe Youth Baseball this year (formerly known as Hillsboro Boy\'s Baseball Association, HBBA). I had stopped by the Dapper & Wise  tasting room and talked with Evan a little about this a few weeks ago. I\'d love for you guys to look over our sponsorship opportunities on our website. There are forms there as well to download and submit or I would love to bring in the information and meet with you two on how your investment in our local program can have a great impact on our local kids. Our program reaches hundreds of kids; with this years registration exceeding 300 kids.\r\nOur sponsorship direct link is http://www.glencoeyouthbaseball.com/Default.aspx?tabid=498213\r\n\r\nThanks you for your time,\r\nJeremy Probst\r\nEmail: jprobst505@gmail.com\r\nCell: 503-707-4599','<p>Evan and Tyler,\n  My name is Jeremy Probst and I am the sponsorship/fundraising coordinator for Glencoe Youth Baseball this year (formerly known as Hillsboro Boy&#8217;s Baseball Association, HBBA). I had stopped by the Dapper &amp; Wise  tasting room and talked with Evan a little about this a few weeks ago. I&#8217;d love for you guys to look over our sponsorship opportunities on our website. There are forms there as well to download and submit or I would love to bring in the information and meet with you two on how your investment in our local program can have a great impact on our local kids. Our program reaches hundreds of kids; with this years registration exceeding 300 kids.\nOur sponsorship direct link is http://www.glencoeyouthbaseball.com/Default.aspx?tabid=498213</p>\n\n<p>Thanks you for your time,\nJeremy Probst\nEmail: jprobst505@gmail.com\nCell: 503-707-4599</p>\n'),(41,163,'Summer Flowers (Arts Fundraiser)\r\n\r\nhttp://www.portlandfestivalballet.org/main/wp-content/uploads/downloads/2014/03/PlantOrderForm.pdf\r\n\r\n\r\nRight up front, I ask you to look at the beautiful pages attached and place an order for your outdoor spring plants, vegetables, and herbs which will make a beautiful addition to your businesses\' ambiance.       \r\n\r\nWhy... ???  Read on...\r\n \r\nIn September 2014, teachers and students from Portland Festival Ballet will embark on an important and memorable journey. We will travel to Manila to take part in an exchange program with the Philippines’ premier dance company, Ballet Philippines, on the occasion of Ballet Philippines’ 45th anniversary. This will be a true exchange. Our dancers, most traveling to Asia for the first time, will gain as much as they give. They will learn on an intimate level about a different culture, its wonders and its challenges. Using the common language of dance, the students will grow professionally and personally as they collaborate with their Ballet Philippines counterparts. They will come home with a better understanding of the world and most likely some new friendships.\r\n \r\nCommunity involvement is nothing new to Portland Festival Ballet. As a 501(c)(3) nonprofit, it is part of our mission. Through our “Reach Out!” program, we work with a variety of organizations to boost access to, and appreciation for, the arts in under-served populations. Our success with “Reach Out!” over the past five years has inspired us to Reach Out more. With this trip, we broaden our scope and extend our outreach to the Philippines. \r\n \r\nTyphoon Haiyan, when it hit the Philippines on November 8, 2013, left in its wake thousands of victims. Ballet Philippines, as part of its own outreach efforts, has invited families, displaced by Haiyan, to the 45th Anniversary gala performances. These performances will be held at the Cultural Center of the Philippines in Manila, during our visit. While in attendance, Portland Festival Ballet dancers will also have the opportunity to meet and work with disadvantaged Filipino youth who have been attending dance workshops with the Ballet Philippines. We are planning to collect donated dance attire and shoes to give them. \r\n \r\nIn turn, Ballet Philippines dancers will come to Portland in October 2014. During their visit they will attend classes at our studio and take part in a collaborative performance with our dances. \r\n \r\nSo, Please, Please, fill out the attached order form and mail with a check on or before April 3rd!!!  \r\n\r\nPortland Festival Ballet\r\n10058 SW Arctic Dr\r\nBeaverton, OR 97005\r\n\r\n* Please include your business\' delivery address \r\n\r\nPlant orders will be delivered between April 27th and 30th. I do hope we can count on you to help us reach our goal. \r\n \r\nThank you for your support!\r\n\r\nhttp://www.portlandfestivalballet.org/\r\n\r\n','<p>Summer Flowers (Arts Fundraiser)</p>\n\n<p>http://www.portlandfestivalballet.org/main/wp-content/uploads/downloads/2014/03/PlantOrderForm.pdf</p>\n\n<p>Right up front, I ask you to look at the beautiful pages attached and place an order for your outdoor spring plants, vegetables, and herbs which will make a beautiful addition to your businesses&#8217; ambiance.</p>\n\n<p>Why&#8230; ???  Read on&#8230;</p>\n\n<p>In September 2014, teachers and students from Portland Festival Ballet will embark on an important and memorable journey. We will travel to Manila to take part in an exchange program with the Philippines’ premier dance company, Ballet Philippines, on the occasion of Ballet Philippines’ 45th anniversary. This will be a true exchange. Our dancers, most traveling to Asia for the first time, will gain as much as they give. They will learn on an intimate level about a different culture, its wonders and its challenges. Using the common language of dance, the students will grow professionally and personally as they collaborate with their Ballet Philippines counterparts. They will come home with a better understanding of the world and most likely some new friendships.</p>\n\n<p>Community involvement is nothing new to Portland Festival Ballet. As a 501(c)(3) nonprofit, it is part of our mission. Through our “Reach Out!” program, we work with a variety of organizations to boost access to, and appreciation for, the arts in under-served populations. Our success with “Reach Out!” over the past five years has inspired us to Reach Out more. With this trip, we broaden our scope and extend our outreach to the Philippines.</p>\n\n<p>Typhoon Haiyan, when it hit the Philippines on November 8, 2013, left in its wake thousands of victims. Ballet Philippines, as part of its own outreach efforts, has invited families, displaced by Haiyan, to the 45th Anniversary gala performances. These performances will be held at the Cultural Center of the Philippines in Manila, during our visit. While in attendance, Portland Festival Ballet dancers will also have the opportunity to meet and work with disadvantaged Filipino youth who have been attending dance workshops with the Ballet Philippines. We are planning to collect donated dance attire and shoes to give them.</p>\n\n<p>In turn, Ballet Philippines dancers will come to Portland in October 2014. During their visit they will attend classes at our studio and take part in a collaborative performance with our dances.</p>\n\n<p>So, Please, Please, fill out the attached order form and mail with a check on or before April 3rd!!!</p>\n\n<p>Portland Festival Ballet\n10058 SW Arctic Dr\nBeaverton, OR 97005</p>\n\n<ul>\n<li>Please include your business&#8217; delivery address </li>\n</ul>\n\n<p>Plant orders will be delivered between April 27th and 30th. I do hope we can count on you to help us reach our goal.</p>\n\n<p>Thank you for your support!</p>\n\n<p>http://www.portlandfestivalballet.org/</p>\n'),(42,164,'Hello! I would love to speak to someone about working at your coffee shop.\r\n\r\nI have been a stay at home mother for 30 + years and I am desiring to give back to my community. I love people and I love coffee. I would appreciate it if I could sit down with someone over a warm cup of coffee to discuss possible employment. \r\n\r\nLooking forward to meeting with you!\r\n\r\nLeslie\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n','<p>Hello! I would love to speak to someone about working at your coffee shop.</p>\n\n<p>I have been a stay at home mother for 30 + years and I am desiring to give back to my community. I love people and I love coffee. I would appreciate it if I could sit down with someone over a warm cup of coffee to discuss possible employment.</p>\n\n<p>Looking forward to meeting with you!</p>\n\n<p>Leslie</p>\n');
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
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_120`
--

LOCK TABLES `sym_entries_data_120` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_120` DISABLE KEYS */;
INSERT INTO `sym_entries_data_120` VALUES (1,143,'2014-02-28 15:50:56','2014-02-28 15:50:56'),(2,146,'2014-03-02 10:26:02','2014-03-02 10:26:02'),(3,147,'2014-03-02 16:33:37','2014-03-02 16:33:37'),(4,148,'2014-03-03 20:43:52','2014-03-03 20:43:52'),(5,149,'2014-03-03 21:19:33','2014-03-03 21:19:33'),(6,150,'2014-03-06 10:05:40','2014-03-06 10:05:40'),(7,151,'2014-03-06 13:47:32','2014-03-06 13:47:32'),(8,152,'2014-03-07 18:51:14','2014-03-07 18:51:14'),(9,153,'2014-03-10 18:58:59','2014-03-10 18:58:59'),(10,154,'2014-03-13 09:39:36','2014-03-13 09:39:36'),(11,156,'2014-03-13 22:37:25','2014-03-13 22:37:25'),(12,157,'2014-03-14 08:42:13','2014-03-14 08:42:13'),(13,158,'2014-03-14 13:24:41','2014-03-14 13:24:41'),(14,159,'2014-03-14 23:08:02','2014-03-14 23:08:02'),(15,160,'2014-03-15 09:42:25','2014-03-15 09:42:25'),(16,161,'2014-03-15 11:23:00','2014-03-15 11:23:00'),(17,162,'2014-03-18 17:01:18','2014-03-18 17:01:18'),(18,163,'2014-03-19 13:34:18','2014-03-19 13:34:18'),(19,164,'2014-03-19 14:05:48','2014-03-19 14:05:48');
/*!40000 ALTER TABLE `sym_entries_data_120` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=96 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_24`
--

LOCK TABLES `sym_entries_data_24` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_24` DISABLE KEYS */;
INSERT INTO `sym_entries_data_24` VALUES (53,91,'beaverton-wide-angle','Beaverton wide angle'),(81,88,'a-wonderful-cappuccino','A wonderful cappuccino'),(51,90,'cannon-beach-wide-angle','Cannon Beach wide angle'),(80,85,'a-man-at-work','A man at work'),(58,86,'tyler-at-work','Tyler at work'),(84,87,'some-mean-brew','Some mean brew'),(54,92,'baseline-wide-angle','Baseline wide angle'),(59,93,'some-cool-coffee-gear','Some cool coffee gear'),(88,94,'another-satisfied-cannon-customer','Another satisfied cannon customer'),(85,95,'adam-on-steam','Adam on steam'),(94,125,'d-and-w-tasting-room','D&W Tasting Room'),(83,100,'a-foamy-mocha','A foamy mocha'),(65,101,'some-coffee-gear-in-hillsboro','Some coffee gear in Hillsboro'),(82,102,'our-coffee-bar-in-hillsboro-is-bronze','Our coffee bar in Hillsboro is bronze'),(87,103,'ordering-coffee-in-cannon','Ordering coffee in Cannon'),(86,104,'a-man-in-cannon','A man in Cannon'),(71,106,'washing-the-kone-filter','Washing the Kone filter'),(79,123,'d-and-w-snow','D&W Snow'),(93,126,'d-and-w-capp','D&W Capp'),(92,127,'d-and-w-roaster','D&W Roaster');
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
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_26`
--

LOCK TABLES `sym_entries_data_26` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_26` DISABLE KEYS */;
INSERT INTO `sym_entries_data_26` VALUES (104,80,'contact','Contact'),(110,82,'locations','Locations'),(100,84,'home','Home'),(115,79,'about','About'),(116,81,'events','Events');
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
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_27`
--

LOCK TABLES `sym_entries_data_27` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_27` DISABLE KEYS */;
INSERT INTO `sym_entries_data_27` VALUES (116,81,NULL,'\n'),(104,80,'<div class=\"blank-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-chemex icon-medium\"></i>\r\n  </div>\r\n  <h4>Contact Us</h4>\r\n  <p class=\"lead\">got something to say? get in touch</p>\r\n  <br/>\r\n</div>','<div class=\"blank-bar\">\n  <div class=\"center\">\n    <i class=\"icon-chemex icon-medium\"></i>\n  </div>\n  <h4>Contact Us</h4>\n  <p class=\"lead\">got something to say? get in touch</p>\n  <br/>\n</div>\n'),(110,82,NULL,'\n'),(100,84,'<div class=\"about-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-social-facebook icon-medium\"></i>\r\n    <i class=\"glyphicon glyphicon-camera icon-medium\"></i>\r\n    <i class=\"icon-social-twitter icon-medium\"></i>\r\n  </div>\r\n  <h4>Let\'s Get Social</h4>\r\n  <p class=\"sub-lead\">Join us on our social networks and stay up to date with what keeps us busy!</p>\r\n  <p class=\"center links\">\r\n    <a href=\"https://facebook.com/insomniacoffee\">Facebook</a>\r\n    <a href=\"http://instagram.com/insomniacoffee\">Instagram</a>\r\n    <a href=\"http://twitter.com/insomnia_coffee#\">Twitter</a>\r\n  </p>\r\n</div>','<div class=\"about-bar\">\n  <div class=\"center\">\n    <i class=\"icon-social-facebook icon-medium\"></i>\n    <i class=\"glyphicon glyphicon-camera icon-medium\"></i>\n    <i class=\"icon-social-twitter icon-medium\"></i>\n  </div>\n  <h4>Let&#8217;s Get Social</h4>\n  <p class=\"sub-lead\">Join us on our social networks and stay up to date with what keeps us busy!</p>\n  <p class=\"center links\">\n    <a href=\"https://facebook.com/insomniacoffee\">Facebook</a>\n    <a href=\"http://instagram.com/insomniacoffee\">Instagram</a>\n    <a href=\"http://twitter.com/insomnia_coffee#\">Twitter</a>\n  </p>\n</div>\n'),(115,79,'<div class=\"blank-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-oregon icon-medium\"></i>\r\n  </div>\r\n  <h4>About Us</h4>\r\n  <p class=\"lead\">Art for the sake of art. Coffee for the sake of coffee.</p>\r\n  <br/>\r\n</div>\r\n\r\n<div class=\"container\">\r\n\r\n<h4>Our Story</h4>\r\n\r\n<p>At Insomnia Coffee, we are in the business of people. We make our best effort to create a unique place where customers can socialize with each other in a comfortable, relaxing and familiar environment while enjoying the best espresso, brewed coffee, looseleaf teas and pastries in town...seriously, we\'ve searched and found! Insomnia Coffee helps our customers relieve their daily stresses by providing peace of mind through great ambiance, easy access location, friendly customer service, and products of consistently high quality. With convenient locations, Insomnia Coffee serves customers with pleasant, quick, clean service to send them on their way in a fantastic mood.</p>\r\n\r\n<p>Our MISSION STATEMENT:\r\nArt for the sake of art.\r\nCoffee for the sake of coffee.</p>\r\n\r\n<p>As we awake each morning, we count ourselves fortunate to be honored with the task of creating amazing beverages with phenomenal products. In a world where automated systems are replacing skilled artisans, we strive to perfect the craft of specialty coffee and savor each day with which we are blessed.</p>\r\n\r\n<h4>Our Inspiration</h4>\r\n\r\n<p>During the industrialization of America, an uprising of skilled woodworkers stood against the streamlining, and ultimate cheapening of their industry\'s handiwork. This \"Craftsman Revolution\" produced amazing and unique furniture unmatched today. Inscribed on these fine chairs and benches is the Latin phrase translated \"Art for art\'s sake.\" Their goal was to produce their very best products because they could, not necessarily for the almighty dollar...but for the sake of the art itself.</p>\r\n\r\n<p>Each of us, having worked in a corporate environment at one time or another, bent our personalities and passions to fit the required status-quo our jobs demanded. Now, inspired by the craftsman revolution, we aspire to rise above the standard and create \"Art for the sake of art. Coffee for the sake of coffee.\"\r\n</p>\r\n\r\n</div>\r\n<br/><br/>','<div class=\"blank-bar\">\n  <div class=\"center\">\n    <i class=\"icon-oregon icon-medium\"></i>\n  </div>\n  <h4>About Us</h4>\n  <p class=\"lead\">Art for the sake of art. Coffee for the sake of coffee.</p>\n  <br/>\n</div>\n\n<div class=\"container\">\n\n<h4>Our Story</h4>\n\n<p>At Insomnia Coffee, we are in the business of people. We make our best effort to create a unique place where customers can socialize with each other in a comfortable, relaxing and familiar environment while enjoying the best espresso, brewed coffee, looseleaf teas and pastries in town&#8230;seriously, we&#8217;ve searched and found! Insomnia Coffee helps our customers relieve their daily stresses by providing peace of mind through great ambiance, easy access location, friendly customer service, and products of consistently high quality. With convenient locations, Insomnia Coffee serves customers with pleasant, quick, clean service to send them on their way in a fantastic mood.</p>\n\n<p>Our MISSION STATEMENT:\nArt for the sake of art.\nCoffee for the sake of coffee.</p>\n\n<p>As we awake each morning, we count ourselves fortunate to be honored with the task of creating amazing beverages with phenomenal products. In a world where automated systems are replacing skilled artisans, we strive to perfect the craft of specialty coffee and savor each day with which we are blessed.</p>\n\n<h4>Our Inspiration</h4>\n\n<p>During the industrialization of America, an uprising of skilled woodworkers stood against the streamlining, and ultimate cheapening of their industry&#8217;s handiwork. This &#8220;Craftsman Revolution&#8221; produced amazing and unique furniture unmatched today. Inscribed on these fine chairs and benches is the Latin phrase translated &#8220;Art for art&#8217;s sake.&#8221; Their goal was to produce their very best products because they could, not necessarily for the almighty dollar&#8230;but for the sake of the art itself.</p>\n\n<p>Each of us, having worked in a corporate environment at one time or another, bent our personalities and passions to fit the required status-quo our jobs demanded. Now, inspired by the craftsman revolution, we aspire to rise above the standard and create &#8220;Art for the sake of art. Coffee for the sake of coffee.&#8221;\n</p>\n\n</div>\n\n<p><br/><br/></p>\n');
/*!40000 ALTER TABLE `sym_entries_data_27` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_46`
--

LOCK TABLES `sym_entries_data_46` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_46` DISABLE KEYS */;
INSERT INTO `sym_entries_data_46` VALUES (49,91,'91','91','91'),(54,86,'86','86','86'),(80,87,'87','87','87'),(76,85,'85','85','85'),(47,90,'90','90','90'),(77,88,'88','88','88'),(50,92,'92','92','92'),(55,93,'93','93','93'),(84,94,'94','94','94'),(81,95,'95','95','95'),(79,100,'100','100','100'),(61,101,'101','101','101'),(78,102,'102','102','102'),(83,103,'103','103','103'),(82,104,'104','104','104'),(67,106,'106','106','106'),(75,123,'123','123','123'),(90,125,'125','125','125'),(89,126,'126','126','126'),(88,127,'127','127','127');
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
) ENGINE=MyISAM AUTO_INCREMENT=115 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_56`
--

LOCK TABLES `sym_entries_data_56` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_56` DISABLE KEYS */;
INSERT INTO `sym_entries_data_56` VALUES (102,80,86,'Contact','contact'),(108,82,84,'Locations','locations'),(98,84,64,'Home','home'),(113,79,85,'About','about'),(114,81,87,'Events','events');
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
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_58`
--

LOCK TABLES `sym_entries_data_58` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_58` DISABLE KEYS */;
INSERT INTO `sym_entries_data_58` VALUES (110,81,95),(98,80,93),(104,82,88),(109,79,86),(94,84,85);
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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_59`
--

LOCK TABLES `sym_entries_data_59` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_59` DISABLE KEYS */;
INSERT INTO `sym_entries_data_59` VALUES (27,93,'coffee-gear.jpg',590725,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:03:39-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(21,91,'beaverton-wide_1.jpg',961159,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:24:25-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(22,92,'baseline-wide.jpg',776502,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:24:46-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(49,88,'cappuccino.jpg',632034,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:11:17-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(19,90,'cannon-wide.jpg',909448,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:23:11-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(48,85,'man-at-work.jpg',821037,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T07:30:49-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(26,86,'tyler-geel.jpg',773373,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T10:29:21-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(52,87,'brew.jpg',544101,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:10:46-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(56,94,'cannon-customer.jpg',602686,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:06:40-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(53,95,'adam-on-steam.jpg',818930,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:49:06-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(62,125,'img_0002.jpg',1280961,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2014-02-20T12:14:38-08:00\";s:5:\"width\";i:2048;s:6:\"height\";i:1536;}'),(51,100,'a-foamy-mocha.jpg',439010,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:09:33-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(33,101,'coffee-gear-hillsboro.jpg',931175,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:12:34-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(50,102,'bronze-coffee-bar.jpg',965726,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:14:13-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(55,103,'coffee-bar-cannon.jpg',828131,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:16:51-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(54,104,'coffee-bar-cannon-man.jpg',687442,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:19:02-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(39,106,'washing-the-kone.jpg',492993,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-12-03T21:22:23-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(47,123,'photo-4-.jpg',1712080,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2014-02-19T11:54:02-08:00\";s:5:\"width\";i:2448;s:6:\"height\";i:2448;}'),(61,126,'img_0009.jpg',788344,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2014-02-20T12:15:02-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}'),(60,127,'img_0003.jpg',1235729,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2014-02-20T12:15:34-08:00\";s:5:\"width\";i:1536;s:6:\"height\";i:2048;}');
/*!40000 ALTER TABLE `sym_entries_data_59` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_69`
--

LOCK TABLES `sym_entries_data_69` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_69` DISABLE KEYS */;
INSERT INTO `sym_entries_data_69` VALUES (82,80,'we love to chat. <br>drop us a line.</br>','<p>we love to chat. <br>drop us a line.</br></p>\n'),(88,82,'come and find us','<p>come and find us</p>\n'),(93,79,'two guys with a vision <br/> to improve coffee for the burbs','<p>two guys with a vision <br/> to improve coffee for the burbs</p>\n'),(78,84,'Welcome to Insomnia Coffee Co. bravely brewing in the suburbs\r\n\r\n* * *\r\n\r\n[Insomnia Store](https://squareup.com/market/insomnia-coffee-baseline)\r\n[Dapper & Wise Store](https://squareup.com/market/dapper-and-wise-roasters)\r\n\r\n<br/>','<p>Welcome to Insomnia Coffee Co. bravely brewing in the suburbs</p>\n\n<hr />\n\n<p><a href=\"https://squareup.com/market/insomnia-coffee-baseline\">Insomnia Store</a>\n<a href=\"https://squareup.com/market/dapper-and-wise-roasters\">Dapper &amp; Wise Store</a></p>\n\n<p><br/></p>\n'),(94,81,'community events in<br/> our community spaces','<p>community events in<br/> our community spaces</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_69` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_93`
--

LOCK TABLES `sym_entries_data_93` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_93` DISABLE KEYS */;
INSERT INTO `sym_entries_data_93` VALUES (76,119,'baseline','Baseline'),(94,89,'d-and-w-tasting-room','D&W Tasting Room'),(84,120,'cannon-beach','Cannon Beach'),(89,121,'tanasbourne','Tanasbourne');
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
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_94`
--

LOCK TABLES `sym_entries_data_94` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_94` DISABLE KEYS */;
INSERT INTO `sym_entries_data_94` VALUES (84,120,'139-w-2nd-street','139 W 2nd Street'),(76,119,'5389-w-baseline-rd','5389 W Baseline Rd.'),(94,89,'2384-nw-amberbrook-dr','2384 NW Amberbrook Dr.'),(89,121,'2348-nw-amberbrook-dr','2348 NW Amberbrook Dr.');
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
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_95`
--

LOCK TABLES `sym_entries_data_95` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_95` DISABLE KEYS */;
INSERT INTO `sym_entries_data_95` VALUES (84,120,'cannon-beach','Cannon Beach'),(76,119,'hillsboro','Hillsboro'),(94,89,'beaverton','Beaverton'),(89,121,'beaverton','Beaverton');
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
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_96`
--

LOCK TABLES `sym_entries_data_96` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_96` DISABLE KEYS */;
INSERT INTO `sym_entries_data_96` VALUES (89,121,'97006','97006'),(84,120,'97110','97110'),(76,119,'97123','97123'),(94,89,'97006','97006');
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
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_97`
--

LOCK TABLES `sym_entries_data_97` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_97` DISABLE KEYS */;
INSERT INTO `sym_entries_data_97` VALUES (84,120,'Just a block from one of the main entrances to the beach, this gem of a coffeeshop is perfect for grabbing a warm drink for your sandy stroll or cozying up on a stormy coastal day to catch up on that neglected novel. Lots of windows and lots of friendly smiles.','<p>Just a block from one of the main entrances to the beach, this gem of a coffeeshop is perfect for grabbing a warm drink for your sandy stroll or cozying up on a stormy coastal day to catch up on that neglected novel. Lots of windows and lots of friendly smiles.</p>\n'),(76,119,'Located in a bustling neighborhood, our Baseline location is the ideal cozy atmosphere for meetings, studying, visiting or relaxing. The view out the northern windows is of Hillsboro Parks and Recreation\'s 53rd Avenue Community Park, including astro-turf soccer fields, playground and fountains.','<p>Located in a bustling neighborhood, our Baseline location is the ideal cozy atmosphere for meetings, studying, visiting or relaxing. The view out the northern windows is of Hillsboro Parks and Recreation&#8217;s 53rd Avenue Community Park, including astro-turf soccer fields, playground and fountains.</p>\n'),(94,89,'Our roasting facility is where one can see firsthand where the \"magic happens.\" Stop in for a Purist coffee experience at the source, see the equipment and enjoy a latte or cappuccino in the swanky atmosphere.<br/>\r\nFind out more at: [dapperandwise.com](http://www.dapperandwise.com)\r\n','<p>Our roasting facility is where one can see firsthand where the &#8220;magic happens.&#8221; Stop in for a Purist coffee experience at the source, see the equipment and enjoy a latte or cappuccino in the swanky atmosphere.<br/>\nFind out more at: <a href=\"http://www.dapperandwise.com\">dapperandwise.com</a></p>\n'),(89,121,'Located in close proximity to the Streets of Tanasbourne shopping area, our Tanasbourne location keeps busy with the surrounding business parks and neighborhoods. Ideal for a quick grab-and-go or sit-and-stay. Convenient to Cornell and Hwy 26.','<p>Located in close proximity to the Streets of Tanasbourne shopping area, our Tanasbourne location keeps busy with the surrounding business parks and neighborhoods. Ideal for a quick grab-and-go or sit-and-stay. Convenient to Cornell and Hwy 26.</p>\n');
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
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=95 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_98`
--

LOCK TABLES `sym_entries_data_98` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_98` DISABLE KEYS */;
INSERT INTO `sym_entries_data_98` VALUES (84,120,'or','OR'),(76,119,'oregon','Oregon'),(94,89,'or','OR'),(89,121,'or','OR');
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
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_99`
--

LOCK TABLES `sym_entries_data_99` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_99` DISABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=160 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_extensions`
--

LOCK TABLES `sym_extensions` WRITE;
/*!40000 ALTER TABLE `sym_extensions` DISABLE KEYS */;
INSERT INTO `sym_extensions` VALUES (129,'debugdevkit','enabled','1.2.4'),(130,'export_ensemble','enabled','2.0.3'),(131,'selectbox_link_field','enabled','1.28'),(132,'jit_image_manipulation','enabled','1.19'),(133,'maintenance_mode','enabled','1.7'),(134,'profiledevkit','enabled','1.3'),(135,'markdown','enabled','1.17'),(136,'xssfilter','enabled','1.2'),(137,'datetime','enabled','3.1'),(138,'globalparamloader','enabled','1.4'),(139,'globalresourceloader','enabled','1.1'),(140,'html5_doctype','enabled','1.3.1'),(146,'image_index_preview','enabled','1.4'),(142,'order_entries','enabled','1.10.1'),(143,'search_index','enabled','0.9.2'),(144,'subsectionmanager','enabled','3.5.1'),(145,'uniqueuploadfield','enabled','1.7'),(147,'pagesfield','enabled','1.6.1'),(148,'configuration','enabled','1.7.1'),(149,'admin_css_override','enabled','1.4'),(150,'logsdevkit','enabled','1.1'),(151,'conditionalizer','enabled','1.3'),(152,'duplicate_entry','enabled','1.3'),(153,'reflectionfield','enabled','1.3.1'),(154,'resave_entries','enabled','0.2'),(155,'save_and_return','enabled','1.8'),(156,'textboxfield','enabled','2.3.3'),(157,'xmlimporter','enabled','2.1'),(158,'markdown_editor','enabled','1.0'),(159,'color_chooser_field','enabled','1.3.2');
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
) ENGINE=MyISAM AUTO_INCREMENT=121 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields`
--

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;
INSERT INTO `sym_fields` VALUES (117,'Phone','phone','input',19,'yes',3,'sidebar','yes'),(118,'Inquiry','inquiry','select',19,'yes',4,'sidebar','yes'),(110,'Location','location','subsectionmanager',5,'no',2,'sidebar','yes'),(119,'Content','content','textarea',19,'yes',5,'main','no'),(56,'Page','page','pages',7,'yes',3,'sidebar','yes'),(109,'Tagline: Menu','tagline-menu','input',7,'yes',1,'main','yes'),(59,'Image','image','upload',5,'yes',1,'sidebar','yes'),(24,'Caption','caption','input',5,'no',0,'main','yes'),(46,'ID','id','reflection',5,'no',3,'sidebar','yes'),(58,'Image','image','subsectionmanager',7,'no',5,'sidebar','yes'),(27,'Content','content','textarea',7,'no',4,'main','no'),(26,'Title','title','input',7,'yes',0,'main','yes'),(69,'Tagline: Masthead','tagline-masthead','textarea',7,'no',2,'main','no'),(116,'Email','email','input',19,'yes',1,'main','yes'),(114,'Hide','hide','checkbox',18,'no',5,'sidebar','yes'),(115,'Name','name','input',19,'yes',0,'main','yes'),(111,'Hide','hide','checkbox',17,'no',13,'sidebar','yes'),(112,'Color','color','colorchooser',17,'yes',11,'sidebar','yes'),(113,'Order','order','order_entries',17,'no',12,'sidebar','yes'),(108,'Location','location','subsectionmanager',18,'yes',4,'sidebar','yes'),(107,'Artwork','artwork','subsectionmanager',18,'no',3,'sidebar','yes'),(93,'Title','title','input',17,'yes',0,'main','yes'),(94,'Address','address','input',17,'yes',3,'sidebar','no'),(95,'City','city','input',17,'yes',4,'sidebar','yes'),(96,'Zip','zip','input',17,'yes',6,'sidebar','yes'),(97,'Description','description','textarea',17,'yes',1,'main','no'),(98,'State','state','input',17,'yes',5,'sidebar','yes'),(99,'Latitude','latitude','input',17,'no',8,'sidebar','no'),(100,'Longitude','longitude','input',17,'no',9,'sidebar','no'),(101,'Image','image','subsectionmanager',17,'no',10,'sidebar','yes'),(102,'Phone','phone','input',17,'no',7,'sidebar','no'),(103,'Hours','hours','textarea',17,'yes',2,'main','no'),(104,'Title','title','input',18,'yes',0,'main','yes'),(105,'Date','date','datetime',18,'yes',1,'sidebar','yes'),(106,'Description','description','textarea',18,'yes',2,'main','no'),(120,'Date','date','datetime',19,'yes',2,'sidebar','yes');
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
) ENGINE=MyISAM AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_checkbox`
--

LOCK TABLES `sym_fields_checkbox` WRITE;
/*!40000 ALTER TABLE `sym_fields_checkbox` DISABLE KEYS */;
INSERT INTO `sym_fields_checkbox` VALUES (84,111,'off',NULL),(80,114,'off',NULL);
/*!40000 ALTER TABLE `sym_fields_checkbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_fields_colorchooser`
--

DROP TABLE IF EXISTS `sym_fields_colorchooser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_fields_colorchooser` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_colorchooser`
--

LOCK TABLES `sym_fields_colorchooser` WRITE;
/*!40000 ALTER TABLE `sym_fields_colorchooser` DISABLE KEYS */;
INSERT INTO `sym_fields_colorchooser` VALUES (7,112);
/*!40000 ALTER TABLE `sym_fields_colorchooser` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_datetime`
--

LOCK TABLES `sym_fields_datetime` WRITE;
/*!40000 ALTER TABLE `sym_fields_datetime` DISABLE KEYS */;
INSERT INTO `sym_fields_datetime` VALUES (4,105,1,1,1,0),(5,120,1,1,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=292 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_input`
--

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;
INSERT INTO `sym_fields_input` VALUES (201,26,NULL),(202,109,NULL),(291,117,NULL),(211,24,NULL),(281,93,NULL),(282,94,NULL),(283,95,NULL),(285,96,NULL),(284,98,NULL),(287,99,'/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i'),(288,100,'/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i'),(286,102,NULL),(244,104,NULL),(289,115,NULL),(290,116,'/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_order_entries`
--

LOCK TABLES `sym_fields_order_entries` WRITE;
/*!40000 ALTER TABLE `sym_fields_order_entries` DISABLE KEYS */;
INSERT INTO `sym_fields_order_entries` VALUES (18,113,NULL,'yes');
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
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_pages`
--

LOCK TABLES `sym_fields_pages` WRITE;
/*!40000 ALTER TABLE `sym_fields_pages` DISABLE KEYS */;
INSERT INTO `sym_fields_pages` VALUES (17,56,'no',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_select`
--

LOCK TABLES `sym_fields_select` WRITE;
/*!40000 ALTER TABLE `sym_fields_select` DISABLE KEYS */;
INSERT INTO `sym_fields_select` VALUES (6,118,'no','no','no','Choose an option:,General Inquiry,Suggestion,Coffee Question,Dapper + Wise Roasters,Distribution/Sales',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=78 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_subsectionmanager`
--

LOCK TABLES `sym_fields_subsectionmanager` WRITE;
/*!40000 ALTER TABLE `sym_fields_subsectionmanager` DISABLE KEYS */;
INSERT INTO `sym_fields_subsectionmanager` VALUES (67,110,'17',NULL,'{$title}',NULL,0,0,0,0,0,1,1,0,0),(65,58,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(77,101,'5',NULL,'{$caption}','{$location}',1,1,0,1,1,1,1,1,0),(72,107,'5',NULL,'{$caption}',NULL,1,0,0,1,1,1,1,1,0),(73,108,'17',NULL,'{$title}',NULL,0,0,0,1,1,1,1,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=130 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_textarea`
--

LOCK TABLES `sym_fields_textarea` WRITE;
/*!40000 ALTER TABLE `sym_fields_textarea` DISABLE KEYS */;
INSERT INTO `sym_fields_textarea` VALUES (128,103,'markdown_extra_with_smartypants',5),(105,27,'markdown_extra_with_smartypants',15),(129,119,'markdown_extra_with_smartypants',15),(104,69,'markdown_extra_with_smartypants',5),(116,106,'markdown_extra_with_smartypants',15),(127,97,'markdown_extra_with_smartypants',15);
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
  `token` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_gpl_params`
--

LOCK TABLES `sym_gpl_params` WRITE;
/*!40000 ALTER TABLE `sym_gpl_params` DISABLE KEYS */;
INSERT INTO `sym_gpl_params` VALUES (1,1,'website-subtitle','brewing Dapper & Wise coffee from Baseline, Tanasbourne & Cannon Beach','Parameter definition',0);
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
INSERT INTO `sym_gpl_sets` VALUES (1,'Main',1,'67,75');
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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_pages`
--

LOCK TABLES `sym_pages` WRITE;
/*!40000 ALTER TABLE `sym_pages` DISABLE KEYS */;
INSERT INTO `sym_pages` VALUES (64,NULL,'Home','home',NULL,'category','events_latest,logged_in_author',NULL,9),(85,NULL,'About','about',NULL,NULL,NULL,NULL,20),(75,NULL,'Maintenance','maintenance',NULL,NULL,NULL,NULL,18),(87,NULL,'Events','events',NULL,'title','events_all,events_single',NULL,22),(84,NULL,'Locations','locations',NULL,'title','events_locations,images_locations,locations_single',NULL,19),(86,NULL,'Contact','contact',NULL,NULL,NULL,'contact_message',21);
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
) ENGINE=MyISAM AUTO_INCREMENT=730 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_pages_types`
--

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;
INSERT INTO `sym_pages_types` VALUES (710,85,'primary'),(656,75,'hidden'),(728,64,'index'),(657,75,'maintenance'),(729,84,'primary'),(717,87,'primary'),(724,86,'primary'),(727,64,'hidden');
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
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sections`
--

LOCK TABLES `sym_sections` WRITE;
/*!40000 ALTER TABLE `sym_sections` DISABLE KEYS */;
INSERT INTO `sym_sections` VALUES (19,'Contact','contact',5,'no','Forms'),(5,'Images','images',4,'no','Admin'),(7,'Page Data','page-data',3,'no','Admin'),(18,'Events','events',1,'no','Content'),(17,'Locations','locations',2,'no','Content');
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
) ENGINE=MyISAM AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sections_association`
--

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;
INSERT INTO `sym_sections_association` VALUES (87,18,107,5,107,'yes'),(82,5,110,17,110,'yes'),(92,17,101,5,101,'yes'),(88,18,108,17,108,'yes'),(80,7,58,5,58,'yes');
/*!40000 ALTER TABLE `sym_sections_association` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sym_sessions`
--

DROP TABLE IF EXISTS `sym_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sym_sessions` (
  `session` varchar(128) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
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
INSERT INTO `sym_sessions` VALUES ('7u6du5hk223kt8aphsb86b0rn2',1395269169,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('ng8sa5hnfcism5aekrprvpmq43',1394751576,'sym-|a:2:{s:8:\"username\";s:5:\"tyler\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|61e5750034518ed42db4|cEmnmy/Ct/7WAnion5uLWjVFmHC8qEmhIvwsioVY5wywOHhHRp3Trw==\";}'),('bov5iu5pugpjuejc8e648onej1',1395269567,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}');
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

-- Dump completed on 2014-03-19 15:53:23
