-- MySQL dump 10.13  Distrib 5.6.13, for osx10.9 (x86_64)
--
-- Host: localhost    Database: insomnia
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_authors`
--

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;
INSERT INTO `sym_authors` VALUES (1,'jdsimcoe','PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==','Jonathan','Simcoe','jonathan@simko.io','2013-12-04 12:53:48','developer','yes',NULL,'no',NULL),(2,'jdirksen','PBKDF2v1|10000|f8e63824d306d7c454bd|7B9+m/ua8bW2zy+wEQ5yZ+JHjgPe72dhUp90GLoXlqfbdmtvlpSNCA==','James','Dirksen','james@dirksen.com',NULL,'author','no','7','no',NULL),(3,'ddirksen','PBKDF2v1|10000|2a48d988afce2a3c0453|vVISWz2Lhj0xBgEUGPoS1Ed1wb+w5ysJ2t76oOBqBVeFaumYRvruJw==','Dana','Dirksen','dana@dirksen.com',NULL,'author','no','7','no',NULL),(4,'jklein','PBKDF2v1|10000|1e905658394658f83ddf|bO+jlRzQeEc27Wy0qB+Q5I8Kjhh0qMbCJT/mIOdaaLAzOhgdfq8I0A==','Jill','Klein','jill@songsforsaplings.com',NULL,'author','no','7','no',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries`
--

LOCK TABLES `sym_entries` WRITE;
/*!40000 ALTER TABLE `sym_entries` DISABLE KEYS */;
INSERT INTO `sym_entries` VALUES (88,5,1,'2013-11-27 11:11:17','2013-11-27 19:11:17','2013-11-27 11:27:26','2013-11-27 19:27:26'),(90,5,1,'2013-11-27 11:23:12','2013-11-27 19:23:12','2013-11-27 11:23:12','2013-11-27 19:23:12'),(87,5,1,'2013-11-27 11:10:47','2013-11-27 19:10:47','2013-11-27 11:27:48','2013-11-27 19:27:48'),(86,5,1,'2013-11-27 10:29:21','2013-11-27 18:29:21','2013-11-27 11:27:57','2013-11-27 19:27:57'),(85,5,1,'2013-11-27 07:30:49','2013-11-27 15:30:49','2013-11-27 11:27:00','2013-11-27 19:27:00'),(84,7,1,'2013-11-12 11:56:05','2013-11-12 19:56:05','2013-11-27 17:06:09','2013-11-28 01:06:09'),(82,7,1,'2013-11-04 13:11:10','2013-11-04 21:11:10','2013-11-27 13:09:08','2013-11-27 21:09:08'),(91,5,1,'2013-11-27 11:23:30','2013-11-27 19:23:30','2013-11-27 11:24:25','2013-11-27 19:24:25'),(83,5,1,'2013-11-04 14:45:19','2013-11-04 22:45:19','2013-11-04 14:45:19','2013-11-04 22:45:19'),(96,5,1,'2013-11-27 15:09:06','2013-11-27 23:09:06','2013-11-27 15:09:06','2013-11-27 23:09:06'),(97,18,1,'2013-11-27 15:35:37','2013-11-27 23:35:37','2013-11-27 15:59:04','2013-11-27 23:59:04'),(98,5,1,'2013-11-27 16:14:54','2013-11-28 00:14:54','2013-11-27 16:14:54','2013-11-28 00:14:54'),(99,19,1,'2013-11-27 17:15:51','2013-11-28 01:15:51','2013-11-27 17:15:51','2013-11-28 01:15:51'),(95,5,1,'2013-11-27 14:49:06','2013-11-27 22:49:06','2013-11-27 14:49:06','2013-11-27 22:49:06'),(81,7,1,'2013-11-04 11:56:04','2013-11-04 19:56:04','2013-11-27 14:49:17','2013-11-27 22:49:17'),(80,7,1,'2013-11-04 11:53:00','2013-11-04 19:53:00','2013-11-27 14:03:58','2013-11-27 22:03:58'),(79,7,1,'2013-11-04 11:52:07','2013-11-04 19:52:07','2013-12-04 11:22:47','2013-12-04 19:22:47'),(78,18,1,'2013-11-04 10:54:06','2013-11-04 18:54:06','2013-11-04 10:54:06','2013-11-04 18:54:06'),(94,5,1,'2013-11-27 14:06:40','2013-11-27 22:06:40','2013-11-27 14:06:40','2013-11-27 22:06:40'),(77,18,1,'2013-11-04 10:52:24','2013-11-04 18:52:24','2013-11-27 16:15:06','2013-11-28 00:15:06'),(76,18,1,'2013-11-04 10:50:55','2013-11-04 18:50:55','2013-11-27 15:58:43','2013-11-27 23:58:43'),(93,5,1,'2013-11-27 14:03:39','2013-11-27 22:03:39','2013-11-27 14:03:39','2013-11-27 22:03:39'),(75,17,1,'2013-11-04 10:30:48','2013-11-04 18:30:48','2013-11-27 15:28:22','2013-11-27 23:28:22'),(74,17,1,'2013-11-04 10:29:05','2013-11-04 18:29:05','2013-11-27 15:26:47','2013-11-27 23:26:47'),(92,5,1,'2013-11-27 11:24:47','2013-11-27 19:24:47','2013-11-27 11:24:47','2013-11-27 19:24:47'),(73,17,1,'2013-11-04 10:28:01','2013-11-04 18:28:01','2013-11-27 15:28:30','2013-11-27 23:28:30'),(89,17,1,'2013-11-27 11:14:19','2013-11-27 19:14:19','2013-12-03 22:31:53','2013-12-04 06:31:53');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_101`
--

LOCK TABLES `sym_entries_data_101` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_101` DISABLE KEYS */;
INSERT INTO `sym_entries_data_101` VALUES (33,73,91),(28,74,92),(32,75,90),(35,89,96);
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_102`
--

LOCK TABLES `sym_entries_data_102` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_102` DISABLE KEYS */;
INSERT INTO `sym_entries_data_102` VALUES (28,73,'503-352-5371','(503) 352-5371'),(23,74,'503-601-4314','(503) 601-4314'),(27,75,'503-436-4164','(503) 436-4164'),(29,89,'555-555-5555','(555) 555-5555');
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_103`
--

LOCK TABLES `sym_entries_data_103` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_103` DISABLE KEYS */;
INSERT INTO `sym_entries_data_103` VALUES (30,73,'Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\r\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\r\nSun.: 10:00 AM - 8:00 PM','<p>Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\nSun.: 10:00 AM - 8:00 PM</p>\n'),(32,89,'Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\r\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\r\nSun.: 10:00 AM - 8:00 PM','<p>Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\nSun.: 10:00 AM - 8:00 PM</p>\n'),(25,74,'Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\r\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\r\nSun.: 10:00 AM - 8:00 PM','<p>Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\nSun.: 10:00 AM - 8:00 PM</p>\n'),(29,75,'Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\r\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\r\nSun.: 10:00 AM - 8:00 PM','<p>Mon. - Thurs.: 9:00 AM to 9:00 PM<br/>\nFri. - Sat.: 8:00 AM to 11:00 PM<br/>\nSun.: 10:00 AM - 8:00 PM</p>\n');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_104`
--

LOCK TABLES `sym_entries_data_104` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_104` DISABLE KEYS */;
INSERT INTO `sym_entries_data_104` VALUES (7,76,'dodgeball','Dodgeball'),(9,77,'ugly-sweater-party','Ugly Sweater Party'),(4,78,'bonfire-lang-syne','Bonfire Lang Syne'),(8,97,'cupping-the-halls','Cupping the Halls');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_105`
--

LOCK TABLES `sym_entries_data_105` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_105` DISABLE KEYS */;
INSERT INTO `sym_entries_data_105` VALUES (7,76,'2013-12-25 19:00:00','2013-12-25 19:00:00'),(9,77,'2013-12-18 17:00:00','2013-12-18 17:00:00'),(4,78,'2014-01-01 01:00:00','2014-01-01 01:00:00'),(8,97,'2014-12-12 15:29:00','2014-12-12 15:29:00');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_106`
--

LOCK TABLES `sym_entries_data_106` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_106` DISABLE KEYS */;
INSERT INTO `sym_entries_data_106` VALUES (7,76,'Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.\r\n\r\nInteger pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.','<p>Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.</p>\n\n<p>Integer pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.</p>\n'),(9,77,'Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.\r\n\r\nInteger pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.','<p>Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.</p>\n\n<p>Integer pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.</p>\n'),(4,78,'Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.\r\n\r\nInteger pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.','<p>Sed mollis diam sed dui convallis iaculis. Nullam iaculis luctus tellus at porta. Nullam mattis risus nec tortor hendrerit bibendum. Morbi sit amet sem bibendum, semper ante at, convallis dolor. Suspendisse ac leo ipsum. Ut blandit, diam at pellentesque aliquam, erat purus pharetra risus, et iaculis turpis tellus vitae dolor. Phasellus dictum porta varius.</p>\n\n<p>Integer pharetra diam augue, eu tristique tortor lobortis eu. Proin tincidunt facilisis risus ac ultricies. Donec id magna nunc. Morbi vehicula congue nisi, id viverra orci auctor vitae. Duis tempus gravida felis vel pulvinar. Nulla nibh enim, egestas ut dignissim et, rutrum non leo. Donec ornare.</p>\n'),(8,97,'Pellentesque vestibulum a risus a imperdiet. Nulla ultricies lacinia tincidunt. Fusce a augue vel libero porttitor elementum sed quis felis. Phasellus vel mi ipsum. Ut nec neque ac tellus pretium dapibus. Mauris in est justo. Vestibulum at facilisis libero. Aenean ullamcorper vestibulum est, eget ullamcorper neque faucibus eget. Etiam venenatis semper blandit. Sed ut elementum quam, eget volutpat turpis. Sed quam diam, imperdiet eu ante at, faucibus blandit velit.','<p>Pellentesque vestibulum a risus a imperdiet. Nulla ultricies lacinia tincidunt. Fusce a augue vel libero porttitor elementum sed quis felis. Phasellus vel mi ipsum. Ut nec neque ac tellus pretium dapibus. Mauris in est justo. Vestibulum at facilisis libero. Aenean ullamcorper vestibulum est, eget ullamcorper neque faucibus eget. Etiam venenatis semper blandit. Sed ut elementum quam, eget volutpat turpis. Sed quam diam, imperdiet eu ante at, faucibus blandit velit.</p>\n');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_107`
--

LOCK TABLES `sym_entries_data_107` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_107` DISABLE KEYS */;
INSERT INTO `sym_entries_data_107` VALUES (7,76,NULL),(9,77,98),(4,78,NULL),(8,97,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_108`
--

LOCK TABLES `sym_entries_data_108` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_108` DISABLE KEYS */;
INSERT INTO `sym_entries_data_108` VALUES (7,76,73),(9,77,74),(4,78,75),(8,97,89);
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
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_109`
--

LOCK TABLES `sym_entries_data_109` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_109` DISABLE KEYS */;
INSERT INTO `sym_entries_data_109` VALUES (58,79,'who-we-are','who we are'),(55,81,'things-we-do','things we do'),(54,80,'get-in-touch','get in touch'),(52,82,'where-we-brew','where we brew'),(56,84,'you-are-here','you are here');
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_110`
--

LOCK TABLES `sym_entries_data_110` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_110` DISABLE KEYS */;
INSERT INTO `sym_entries_data_110` VALUES (1,85,74),(2,88,73),(3,87,73),(4,86,74),(5,93,73),(6,94,75),(7,95,75),(8,96,NULL),(9,98,NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_111`
--

LOCK TABLES `sym_entries_data_111` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_111` DISABLE KEYS */;
INSERT INTO `sym_entries_data_111` VALUES (25,89,'no'),(18,74,'no'),(22,75,'no'),(23,73,'no');
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
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_112`
--

LOCK TABLES `sym_entries_data_112` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_112` DISABLE KEYS */;
INSERT INTO `sym_entries_data_112` VALUES (14,73,'#FCD04B'),(13,75,'#8285ab'),(16,89,'#BBCF5F'),(9,74,'#D9433C');
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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_113`
--

LOCK TABLES `sym_entries_data_113` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_113` DISABLE KEYS */;
INSERT INTO `sym_entries_data_113` VALUES (6,74,1),(10,75,3),(11,73,2),(13,89,4);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_114`
--

LOCK TABLES `sym_entries_data_114` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_114` DISABLE KEYS */;
INSERT INTO `sym_entries_data_114` VALUES (2,76,'no'),(3,97,'no'),(4,77,'no');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_115`
--

LOCK TABLES `sym_entries_data_115` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_115` DISABLE KEYS */;
INSERT INTO `sym_entries_data_115` VALUES (1,99,'joe-schmoe','Joe Schmoe');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_116`
--

LOCK TABLES `sym_entries_data_116` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_116` DISABLE KEYS */;
INSERT INTO `sym_entries_data_116` VALUES (1,99,'jdsimcoe-gmailcom','jdsimcoe@gmail.com');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_117`
--

LOCK TABLES `sym_entries_data_117` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_117` DISABLE KEYS */;
INSERT INTO `sym_entries_data_117` VALUES (1,99,'555-555-5555','555-555-5555');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_118`
--

LOCK TABLES `sym_entries_data_118` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_118` DISABLE KEYS */;
INSERT INTO `sym_entries_data_118` VALUES (1,99,'suggestion','Suggestion');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_119`
--

LOCK TABLES `sym_entries_data_119` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_119` DISABLE KEYS */;
INSERT INTO `sym_entries_data_119` VALUES (1,99,'asdfasdf','<p>asdfasdf</p>\n');
/*!40000 ALTER TABLE `sym_entries_data_119` ENABLE KEYS */;
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
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_24`
--

LOCK TABLES `sym_entries_data_24` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_24` DISABLE KEYS */;
INSERT INTO `sym_entries_data_24` VALUES (53,91,'beaverton-wide-angle','Beaverton wide angle'),(56,88,'a-wonderful-cappuccino','A wonderful cappuccino'),(51,90,'cannon-beach-wide-angle','Cannon Beach wide angle'),(45,83,'test-image','test image'),(55,85,'a-man-at-work','A man at work'),(58,86,'tyler-at-work','Tyler at work'),(57,87,'some-mean-brew','Some mean brew'),(54,92,'baseline-wide-angle','Baseline wide angle'),(59,93,'some-cool-coffee-gear','Some cool coffee gear'),(60,94,'another-satisfied-cannon-customer','Another satisfied cannon customer'),(61,95,'adam-on-steam','Adam on steam'),(62,96,'our-tasting-room','Our tasting room'),(63,98,'showing-off-some-stache','Showing off some \'stache');
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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_26`
--

LOCK TABLES `sym_entries_data_26` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_26` DISABLE KEYS */;
INSERT INTO `sym_entries_data_26` VALUES (83,80,'contact','Contact'),(81,82,'locations','Locations'),(85,84,'home','Home'),(87,79,'about','About'),(84,81,'events','Events');
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
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_27`
--

LOCK TABLES `sym_entries_data_27` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_27` DISABLE KEYS */;
INSERT INTO `sym_entries_data_27` VALUES (84,81,NULL,'\n'),(83,80,'<div class=\"blank-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-chemex icon-medium\"></i>\r\n  </div>\r\n  <h4>Contact Us</h4>\r\n  <p class=\"lead\">fed up that we don\'t have Chemex? get in touch</p>\r\n  <br/>\r\n</div>','<div class=\"blank-bar\">\n  <div class=\"center\">\n    <i class=\"icon-chemex icon-medium\"></i>\n  </div>\n  <h4>Contact Us</h4>\n  <p class=\"lead\">fed up that we don&#8217;t have Chemex? get in touch</p>\n  <br/>\n</div>\n'),(81,82,NULL,'\n'),(85,84,'<div class=\"about-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-bean icon-medium\"></i>\r\n  </div>\r\n  <h4>Support Our Cause</h4>\r\n  <p class=\"sub-lead\">Help us bring ridiculous coffee to the suburban faux hipsters who don\'t really want to be a part of Portland but want to pretend like they are a part of the coolness of Portland.</p>\r\n  <p class=\"center links\">\r\n    <a href=\"/about\">Cool Button</a>\r\n  </p>\r\n</div>','<div class=\"about-bar\">\n  <div class=\"center\">\n    <i class=\"icon-bean icon-medium\"></i>\n  </div>\n  <h4>Support Our Cause</h4>\n  <p class=\"sub-lead\">Help us bring ridiculous coffee to the suburban faux hipsters who don&#8217;t really want to be a part of Portland but want to pretend like they are a part of the coolness of Portland.</p>\n  <p class=\"center links\">\n    <a href=\"/about\">Cool Button</a>\n  </p>\n</div>\n'),(87,79,'<div class=\"blank-bar\">\r\n  <div class=\"center\">\r\n    <i class=\"icon-oregon icon-medium\"></i>\r\n  </div>\r\n  <h4>About Us</h4>\r\n  <p class=\"lead\">Evan Aldrete & Tyler Geel are the brains and beauty of Insomnia Coffee Co.</p>\r\n  <br/>\r\n</div>\r\n\r\n<div class=\"container\">\r\n\r\n<h4>Our History</h4>\r\n\r\n<p>Vestibulum molestie odio nulla. Vivamus quis ante lorem. Pellentesque dapibus in lacus non vehicula. Phasellus eget lectus vel ligula convallis imperdiet. Vivamus id urna id sem luctus euismod. Sed venenatis ut mauris et scelerisque. Pellentesque eu condimentum augue. Maecenas sollicitudin hendrerit nunc, sodales vulputate massa feugiat in. Sed ac justo id tellus laoreet consectetur. Sed a pulvinar massa, eu porttitor purus.</p>\r\n\r\n<p>Ut pulvinar risus in eros viverra imperdiet. In volutpat pretium tellus, quis placerat diam faucibus id. Nunc accumsan leo in ultricies tempus. Pellentesque ut est ante. Curabitur nec nulla dapibus, rhoncus metus non, pellentesque lectus. Ut ac porta metus.</p>\r\n\r\n<h4>Where We\'re Going</h4>\r\n\r\n<p>Vestibulum molestie odio nulla. Vivamus quis ante lorem. Pellentesque dapibus in lacus non vehicula. Phasellus eget lectus vel ligula convallis imperdiet. Vivamus id urna id sem luctus euismod. Sed venenatis ut mauris et scelerisque. Pellentesque eu condimentum augue. Maecenas sollicitudin hendrerit nunc, sodales vulputate massa feugiat in. Sed ac justo id tellus laoreet consectetur. Sed a pulvinar massa, eu porttitor purus.</p>\r\n\r\n<p>Ut pulvinar risus in eros viverra imperdiet. In volutpat pretium tellus, quis placerat diam faucibus id. Nunc accumsan leo in ultricies tempus. Pellentesque ut est ante. Curabitur nec nulla dapibus, rhoncus metus non, pellentesque lectus. Ut ac porta metus.</p>\r\n\r\n</div>\r\n\r\n<br/><br/>','<div class=\"blank-bar\">\n  <div class=\"center\">\n    <i class=\"icon-oregon icon-medium\"></i>\n  </div>\n  <h4>About Us</h4>\n  <p class=\"lead\">Evan Aldrete &amp; Tyler Geel are the brains and beauty of Insomnia Coffee Co.</p>\n  <br/>\n</div>\n\n<div class=\"container\">\n\n<h4>Our History</h4>\n\n<p>Vestibulum molestie odio nulla. Vivamus quis ante lorem. Pellentesque dapibus in lacus non vehicula. Phasellus eget lectus vel ligula convallis imperdiet. Vivamus id urna id sem luctus euismod. Sed venenatis ut mauris et scelerisque. Pellentesque eu condimentum augue. Maecenas sollicitudin hendrerit nunc, sodales vulputate massa feugiat in. Sed ac justo id tellus laoreet consectetur. Sed a pulvinar massa, eu porttitor purus.</p>\n\n<p>Ut pulvinar risus in eros viverra imperdiet. In volutpat pretium tellus, quis placerat diam faucibus id. Nunc accumsan leo in ultricies tempus. Pellentesque ut est ante. Curabitur nec nulla dapibus, rhoncus metus non, pellentesque lectus. Ut ac porta metus.</p>\n\n<h4>Where We’re Going</h4>\n\n<p>Vestibulum molestie odio nulla. Vivamus quis ante lorem. Pellentesque dapibus in lacus non vehicula. Phasellus eget lectus vel ligula convallis imperdiet. Vivamus id urna id sem luctus euismod. Sed venenatis ut mauris et scelerisque. Pellentesque eu condimentum augue. Maecenas sollicitudin hendrerit nunc, sodales vulputate massa feugiat in. Sed ac justo id tellus laoreet consectetur. Sed a pulvinar massa, eu porttitor purus.</p>\n\n<p>Ut pulvinar risus in eros viverra imperdiet. In volutpat pretium tellus, quis placerat diam faucibus id. Nunc accumsan leo in ultricies tempus. Pellentesque ut est ante. Curabitur nec nulla dapibus, rhoncus metus non, pellentesque lectus. Ut ac porta metus.</p>\n\n</div>\n\n<p><br/><br/></p>');
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
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_46`
--

LOCK TABLES `sym_entries_data_46` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_46` DISABLE KEYS */;
INSERT INTO `sym_entries_data_46` VALUES (49,91,'91','91','91'),(54,86,'86','86','86'),(53,87,'87','87','87'),(51,85,'85','85','85'),(41,83,'83','83','83'),(47,90,'90','90','90'),(52,88,'88','88','88'),(50,92,'92','92','92'),(55,93,'93','93','93'),(56,94,'94','94','94'),(57,95,'95','95','95'),(58,96,'96','96','96'),(59,98,'98','98','98');
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
) ENGINE=MyISAM AUTO_INCREMENT=86 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_56`
--

LOCK TABLES `sym_entries_data_56` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_56` DISABLE KEYS */;
INSERT INTO `sym_entries_data_56` VALUES (81,80,86,'Contact','contact'),(79,82,84,'Locations','locations'),(83,84,64,'Home','home'),(85,79,85,'About','about'),(82,81,87,'Events','events');
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
) ENGINE=MyISAM AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_58`
--

LOCK TABLES `sym_entries_data_58` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_58` DISABLE KEYS */;
INSERT INTO `sym_entries_data_58` VALUES (78,81,95),(77,80,93),(75,82,88),(81,79,86),(79,84,85);
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
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_59`
--

LOCK TABLES `sym_entries_data_59` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_59` DISABLE KEYS */;
INSERT INTO `sym_entries_data_59` VALUES (27,93,'coffee-gear.jpg',590725,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:03:39-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(21,91,'beaverton-wide_1.jpg',961159,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:24:25-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(22,92,'baseline-wide.jpg',776502,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:24:46-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(24,88,'cappuccino.jpg',632034,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:11:17-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(19,90,'cannon-wide.jpg',909448,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:23:11-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(13,83,'podcast-wood.jpg',1294370,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-04T14:45:19-08:00\";s:5:\"width\";i:2340;s:6:\"height\";i:1470;}'),(23,85,'man-at-work.jpg',821037,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T07:30:49-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(26,86,'tyler-geel.jpg',773373,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T10:29:21-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(25,87,'brew.jpg',544101,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T11:10:46-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(28,94,'cannon-customer.jpg',602686,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:06:40-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(29,95,'adam-on-steam.jpg',818930,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T14:49:06-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(30,96,'tasting-room.jpg',374550,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T15:09:06-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}'),(31,98,'showing-some-stache.jpg',642687,'image/jpeg','a:3:{s:8:\"creation\";s:25:\"2013-11-27T16:14:54-08:00\";s:5:\"width\";i:3000;s:6:\"height\";i:2000;}');
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
) ENGINE=MyISAM AUTO_INCREMENT=66 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_69`
--

LOCK TABLES `sym_entries_data_69` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_69` DISABLE KEYS */;
INSERT INTO `sym_entries_data_69` VALUES (65,79,'we are a crazy couple guys brewing coffee for the burbs','<p>we are a crazy couple guys brewing coffee for the burbs</p>\n'),(61,80,'we would love to chat about the java. send us a line.','<p>we would love to chat about the java. send us a line.</p>\n'),(59,82,'our locations in the Pacific Northwest all serve our signature coffee from Dapper & Wise Roasters','<p>our locations in the Pacific Northwest all serve our signature coffee from Dapper &amp; Wise Roasters</p>\n'),(63,84,'Welcome to Insomnia Coffee Co. bravely brewing in the suburbs\r\n\r\n* * *\r\n\r\n[Learn More](/about)\r\n[Strange Brew](/about)\r\n\r\n<br/>','<p>Welcome to Insomnia Coffee Co. bravely brewing in the suburbs</p>\n\n<hr />\n\n<p><a href=\"/about\">Learn More</a>\n<a href=\"/about\">Strange Brew</a></p>\n\n<p><br/></p>\n'),(62,81,'we have been known to dodge the ball from time to time','<p>we have been known to dodge the ball from time to time</p>\n');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_93`
--

LOCK TABLES `sym_entries_data_93` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_93` DISABLE KEYS */;
INSERT INTO `sym_entries_data_93` VALUES (33,73,'beaverton','Beaverton'),(28,74,'hillsboro','Hillsboro'),(32,75,'cannon-beach','Cannon Beach'),(35,89,'d-and-w-tasting-room','D&W Tasting Room');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_94`
--

LOCK TABLES `sym_entries_data_94` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_94` DISABLE KEYS */;
INSERT INTO `sym_entries_data_94` VALUES (33,73,'2348-nw-amberbrook-dr','2348 NW Amberbrook Dr.'),(28,74,'5389-w-baseline-rd','5389 W Baseline Rd.'),(32,75,'139-w-2nd-street','139 W 2nd Street'),(35,89,'2384-nw-amberbrook-dr','2384 NW Amberbrook Dr.');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_95`
--

LOCK TABLES `sym_entries_data_95` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_95` DISABLE KEYS */;
INSERT INTO `sym_entries_data_95` VALUES (33,73,'beaverton','Beaverton'),(28,74,'hillsboro','Hillsboro'),(32,75,'cannon-beach','Cannon Beach'),(35,89,'beaverton','Beaverton');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_96`
--

LOCK TABLES `sym_entries_data_96` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_96` DISABLE KEYS */;
INSERT INTO `sym_entries_data_96` VALUES (33,73,'97006','97006'),(28,74,'97123','97123'),(32,75,'97110','97110'),(35,89,'97006','97006');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_97`
--

LOCK TABLES `sym_entries_data_97` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_97` DISABLE KEYS */;
INSERT INTO `sym_entries_data_97` VALUES (33,73,'Phasellus quam lacus, tincidunt ac consequat id, aliquet quis turpis. Cras interdum gravida orci, eu rutrum felis posuere non. Integer id lacus nisi. Sed id dolor varius, cursus enim ut, feugiat nisl. Cras mollis sed ligula ac imperdiet. Donec sodales suscipit accumsan. Mauris suscipit enim vel purus interdum feugiat. Mauris nunc dui, tincidunt at dolor et, euismod dictum felis. Vestibulum.','<p>Phasellus quam lacus, tincidunt ac consequat id, aliquet quis turpis. Cras interdum gravida orci, eu rutrum felis posuere non. Integer id lacus nisi. Sed id dolor varius, cursus enim ut, feugiat nisl. Cras mollis sed ligula ac imperdiet. Donec sodales suscipit accumsan. Mauris suscipit enim vel purus interdum feugiat. Mauris nunc dui, tincidunt at dolor et, euismod dictum felis. Vestibulum.</p>\n'),(28,74,'Nullam imperdiet dui turpis, quis volutpat erat vehicula non. Nullam nec accumsan tellus. Curabitur sit amet dui at augue ullamcorper ultricies. Praesent velit massa, pretium ut purus et, blandit venenatis ligula. Etiam et dolor pretium, bibendum justo ac, pulvinar dolor. Donec placerat luctus lectus in tincidunt. Donec blandit fermentum ante. Vestibulum sit amet hendrerit nibh. Morbi et nulla eget sem facilisis sagittis. Praesent felis enim, luctus in purus sed, tristique eleifend dui. Duis interdum tortor.','<p>Nullam imperdiet dui turpis, quis volutpat erat vehicula non. Nullam nec accumsan tellus. Curabitur sit amet dui at augue ullamcorper ultricies. Praesent velit massa, pretium ut purus et, blandit venenatis ligula. Etiam et dolor pretium, bibendum justo ac, pulvinar dolor. Donec placerat luctus lectus in tincidunt. Donec blandit fermentum ante. Vestibulum sit amet hendrerit nibh. Morbi et nulla eget sem facilisis sagittis. Praesent felis enim, luctus in purus sed, tristique eleifend dui. Duis interdum tortor.</p>\n'),(32,75,'Curabitur sodales sed nisi sit amet ultrices. In at nulla placerat, consequat mauris sit amet, faucibus sapien. Phasellus tempor, massa sed faucibus rutrum, tortor metus luctus erat, in luctus ipsum urna vitae libero. Nulla lobortis nulla nec dolor posuere, quis semper dui luctus. Mauris quis ornare velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut pulvinar leo, sed fermentum lacus.\r\n\r\nAliquam faucibus mauris velit, pulvinar sodales sem porttitor sed. Aenean scelerisque commodo velit at facilisis. Suspendisse pharetra tempor nibh at vulputate. Nulla vel suscipit mauris. Suspendisse posuere nec dolor ac fringilla. Phasellus laoreet rutrum diam id posuere. Suspendisse.','<p>Curabitur sodales sed nisi sit amet ultrices. In at nulla placerat, consequat mauris sit amet, faucibus sapien. Phasellus tempor, massa sed faucibus rutrum, tortor metus luctus erat, in luctus ipsum urna vitae libero. Nulla lobortis nulla nec dolor posuere, quis semper dui luctus. Mauris quis ornare velit. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut pulvinar leo, sed fermentum lacus.</p>\n\n<p>Aliquam faucibus mauris velit, pulvinar sodales sem porttitor sed. Aenean scelerisque commodo velit at facilisis. Suspendisse pharetra tempor nibh at vulputate. Nulla vel suscipit mauris. Suspendisse posuere nec dolor ac fringilla. Phasellus laoreet rutrum diam id posuere. Suspendisse.</p>\n'),(35,89,'This is a great spot to get your pour on.','<p>This is a great spot to get your pour on.</p>\n');
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_entries_data_98`
--

LOCK TABLES `sym_entries_data_98` WRITE;
/*!40000 ALTER TABLE `sym_entries_data_98` DISABLE KEYS */;
INSERT INTO `sym_entries_data_98` VALUES (33,73,'or','OR'),(28,74,'or','OR'),(32,75,'or','OR'),(35,89,'or','OR');
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
) ENGINE=MyISAM AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields`
--

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;
INSERT INTO `sym_fields` VALUES (117,'Phone','phone','input',19,'yes',2,'sidebar','yes'),(118,'Inquiry','inquiry','select',19,'yes',3,'sidebar','yes'),(110,'Location','location','subsectionmanager',5,'no',2,'sidebar','yes'),(119,'Content','content','textarea',19,'yes',4,'main','no'),(56,'Page','page','pages',7,'yes',3,'sidebar','yes'),(109,'Tagline: Menu','tagline-menu','input',7,'yes',1,'main','yes'),(59,'Image','image','upload',5,'yes',1,'sidebar','yes'),(24,'Caption','caption','input',5,'no',0,'main','yes'),(46,'ID','id','reflection',5,'no',3,'sidebar','yes'),(58,'Image','image','subsectionmanager',7,'no',5,'sidebar','yes'),(27,'Content','content','textarea',7,'no',4,'main','no'),(26,'Title','title','input',7,'yes',0,'main','yes'),(69,'Tagline: Masthead','tagline-masthead','textarea',7,'no',2,'main','no'),(116,'Email','email','input',19,'yes',1,'main','yes'),(114,'Hide','hide','checkbox',18,'no',5,'sidebar','yes'),(115,'Name','name','input',19,'yes',0,'main','yes'),(111,'Hide','hide','checkbox',17,'no',13,'sidebar','yes'),(112,'Color','color','colorchooser',17,'yes',11,'sidebar','yes'),(113,'Order','order','order_entries',17,'no',12,'sidebar','yes'),(108,'Location','location','subsectionmanager',18,'yes',4,'sidebar','yes'),(107,'Artwork','artwork','subsectionmanager',18,'no',3,'sidebar','yes'),(93,'Title','title','input',17,'yes',0,'main','yes'),(94,'Address','address','input',17,'yes',3,'sidebar','no'),(95,'City','city','input',17,'yes',4,'sidebar','yes'),(96,'Zip','zip','input',17,'yes',6,'sidebar','yes'),(97,'Description','description','textarea',17,'yes',1,'main','no'),(98,'State','state','input',17,'yes',5,'sidebar','yes'),(99,'Latitude','latitude','input',17,'no',8,'sidebar','no'),(100,'Longitude','longitude','input',17,'no',9,'sidebar','no'),(101,'Image','image','subsectionmanager',17,'no',10,'sidebar','yes'),(102,'Phone','phone','input',17,'no',7,'sidebar','no'),(103,'Hours','hours','textarea',17,'yes',2,'main','no'),(104,'Title','title','input',18,'yes',0,'main','yes'),(105,'Date','date','datetime',18,'yes',1,'sidebar','yes'),(106,'Description','description','textarea',18,'yes',2,'main','no');
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
) ENGINE=MyISAM AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_checkbox`
--

LOCK TABLES `sym_fields_checkbox` WRITE;
/*!40000 ALTER TABLE `sym_fields_checkbox` DISABLE KEYS */;
INSERT INTO `sym_fields_checkbox` VALUES (79,111,'off',NULL),(80,114,'off',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_colorchooser`
--

LOCK TABLES `sym_fields_colorchooser` WRITE;
/*!40000 ALTER TABLE `sym_fields_colorchooser` DISABLE KEYS */;
INSERT INTO `sym_fields_colorchooser` VALUES (3,112);
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_datetime`
--

LOCK TABLES `sym_fields_datetime` WRITE;
/*!40000 ALTER TABLE `sym_fields_datetime` DISABLE KEYS */;
INSERT INTO `sym_fields_datetime` VALUES (4,105,1,1,1,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=251 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_input`
--

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;
INSERT INTO `sym_fields_input` VALUES (201,26,NULL),(202,109,NULL),(250,117,NULL),(211,24,NULL),(236,93,NULL),(237,94,NULL),(238,95,NULL),(240,96,NULL),(239,98,NULL),(242,99,'/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i'),(243,100,'/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i'),(241,102,NULL),(244,104,NULL),(248,115,NULL),(249,116,'/^\\w(?:\\.?[\\w%+-]+)*@\\w(?:[\\w-]*\\.)+?[a-z]{2,}$/i');
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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_order_entries`
--

LOCK TABLES `sym_fields_order_entries` WRITE;
/*!40000 ALTER TABLE `sym_fields_order_entries` DISABLE KEYS */;
INSERT INTO `sym_fields_order_entries` VALUES (14,113,NULL,'yes');
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_select`
--

LOCK TABLES `sym_fields_select` WRITE;
/*!40000 ALTER TABLE `sym_fields_select` DISABLE KEYS */;
INSERT INTO `sym_fields_select` VALUES (3,118,'no','no','no','Choose an option:,General Question,Get an Estimate,Start a Project,Suggestion',NULL);
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
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_subsectionmanager`
--

LOCK TABLES `sym_fields_subsectionmanager` WRITE;
/*!40000 ALTER TABLE `sym_fields_subsectionmanager` DISABLE KEYS */;
INSERT INTO `sym_fields_subsectionmanager` VALUES (67,110,'17',NULL,'{$title}',NULL,0,0,0,0,0,1,1,0,0),(65,58,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0),(71,101,'5',NULL,'{$caption}',NULL,1,0,1,1,1,0,1,1,0),(72,107,'5',NULL,'{$caption}',NULL,1,0,0,1,1,1,1,1,0),(73,108,'17',NULL,'{$title}',NULL,0,0,0,1,1,1,1,0,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_fields_textarea`
--

LOCK TABLES `sym_fields_textarea` WRITE;
/*!40000 ALTER TABLE `sym_fields_textarea` DISABLE KEYS */;
INSERT INTO `sym_fields_textarea` VALUES (115,103,'markdown_extra_with_smartypants',5),(105,27,'markdown_extra_with_smartypants',15),(118,119,'markdown_extra_with_smartypants',15),(104,69,'markdown_extra_with_smartypants',5),(116,106,'markdown_extra_with_smartypants',15),(114,97,'markdown_extra_with_smartypants',15);
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
INSERT INTO `sym_pages` VALUES (64,NULL,'Home','home',NULL,'category','events_latest,logged_in_author',NULL,9),(85,NULL,'About','about',NULL,NULL,NULL,NULL,20),(75,NULL,'Maintenance','maintenance',NULL,NULL,NULL,NULL,18),(87,NULL,'Events','events',NULL,'title','events_all,events_single',NULL,22),(84,NULL,'Locations','locations',NULL,'title','events_locations,images_locations,locations_all,locations_single',NULL,19),(86,NULL,'Contact','contact',NULL,NULL,NULL,'contact_message',21);
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
) ENGINE=MyISAM AUTO_INCREMENT=725 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_pages_types`
--

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;
INSERT INTO `sym_pages_types` VALUES (710,85,'primary'),(656,75,'hidden'),(723,64,'index'),(722,64,'hidden'),(657,75,'maintenance'),(718,84,'primary'),(717,87,'primary'),(724,86,'primary');
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
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sym_sections_association`
--

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;
INSERT INTO `sym_sections_association` VALUES (87,18,107,5,107,'yes'),(82,5,110,17,110,'yes'),(86,17,101,5,101,'yes'),(88,18,108,17,108,'yes'),(80,7,58,5,58,'yes');
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
INSERT INTO `sym_sessions` VALUES ('44fpe4bm0e0q09umt15qup3pg3',1385660503,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),('u4oljmdbid95hp2ahfdco652i5',1386190429,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}');
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

-- Dump completed on 2013-12-04 12:54:48
