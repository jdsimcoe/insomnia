# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: insomnia
# Generation Time: 2013-10-09 05:46:51 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table sym_authors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_authors`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_authors` WRITE;
/*!40000 ALTER TABLE `sym_authors` DISABLE KEYS */;

INSERT INTO `sym_authors` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `last_seen`, `user_type`, `primary`, `default_area`, `auth_token_active`, `language`)
VALUES
	(1,'jdsimcoe','PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==','Jonathan','Simcoe','jonathan@simko.io','2013-10-08 22:45:02','developer','yes',NULL,'no',NULL),
	(2,'jdirksen','PBKDF2v1|10000|f8e63824d306d7c454bd|7B9+m/ua8bW2zy+wEQ5yZ+JHjgPe72dhUp90GLoXlqfbdmtvlpSNCA==','James','Dirksen','james@dirksen.com',NULL,'author','no','7','no',NULL),
	(3,'ddirksen','PBKDF2v1|10000|2a48d988afce2a3c0453|vVISWz2Lhj0xBgEUGPoS1Ed1wb+w5ysJ2t76oOBqBVeFaumYRvruJw==','Dana','Dirksen','dana@dirksen.com',NULL,'author','no','7','no',NULL),
	(4,'jklein','PBKDF2v1|10000|1e905658394658f83ddf|bO+jlRzQeEc27Wy0qB+Q5I8Kjhh0qMbCJT/mIOdaaLAzOhgdfq8I0A==','Jill','Klein','jill@songsforsaplings.com',NULL,'author','no','7','no',NULL);

/*!40000 ALTER TABLE `sym_authors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_cache`;

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



# Dump of table sym_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_24
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_24`;

CREATE TABLE `sym_entries_data_24` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_26
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_26`;

CREATE TABLE `sym_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_27
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_27`;

CREATE TABLE `sym_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_29
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_29`;

CREATE TABLE `sym_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_46
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_46`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_56
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_56`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_58
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_58`;

CREATE TABLE `sym_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_59
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_59`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_69
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_69`;

CREATE TABLE `sym_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_entries_data_70
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_entries_data_70`;

CREATE TABLE `sym_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_extensions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions`;

CREATE TABLE `sym_extensions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` enum('enabled','disabled') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'enabled',
  `version` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions` WRITE;
/*!40000 ALTER TABLE `sym_extensions` DISABLE KEYS */;

INSERT INTO `sym_extensions` (`id`, `name`, `status`, `version`)
VALUES
	(129,'debugdevkit','enabled','1.2.4'),
	(130,'export_ensemble','enabled','2.0.3'),
	(131,'selectbox_link_field','enabled','1.28'),
	(132,'jit_image_manipulation','enabled','1.19'),
	(133,'maintenance_mode','enabled','1.7'),
	(134,'profiledevkit','enabled','1.3'),
	(135,'markdown','enabled','1.17'),
	(136,'xssfilter','enabled','1.2'),
	(137,'datetime','enabled','3.1'),
	(138,'globalparamloader','enabled','1.4'),
	(139,'globalresourceloader','enabled','1.1'),
	(140,'html5_doctype','enabled','1.3.1'),
	(146,'image_index_preview','enabled','1.4'),
	(142,'order_entries','enabled','1.10.1'),
	(143,'search_index','enabled','0.9.2'),
	(144,'subsectionmanager','enabled','3.5.1'),
	(145,'uniqueuploadfield','enabled','1.7'),
	(147,'pagesfield','enabled','1.6.1'),
	(148,'configuration','enabled','1.7.1'),
	(149,'admin_css_override','enabled','1.4'),
	(150,'logsdevkit','enabled','1.1'),
	(151,'conditionalizer','enabled','1.3'),
	(152,'duplicate_entry','enabled','1.3'),
	(153,'reflectionfield','enabled','1.3.1'),
	(154,'resave_entries','enabled','0.2'),
	(155,'save_and_return','enabled','1.8'),
	(156,'textboxfield','enabled','2.3.3'),
	(157,'xmlimporter','enabled','2.1'),
	(158,'markdown_editor','enabled','1.0');

/*!40000 ALTER TABLE `sym_extensions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_extensions_delegates
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_extensions_delegates`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_extensions_delegates` WRITE;
/*!40000 ALTER TABLE `sym_extensions_delegates` DISABLE KEYS */;

INSERT INTO `sym_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`)
VALUES
	(220,129,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(219,129,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(221,130,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(228,133,'/blueprints/pages/','AppendPageContent','__appendType'),
	(227,133,'/backend/','AppendPageAlert','__appendAlert'),
	(226,133,'/system/preferences/','CustomActions','__toggleMaintenanceMode'),
	(232,134,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(231,134,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(225,133,'/system/preferences/','Save','__SavePreferences'),
	(234,136,'/blueprints/events/edit/','AppendEventFilter','appendEventFilter'),
	(222,132,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(224,133,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(233,136,'/blueprints/events/new/','AppendEventFilter','appendEventFilter'),
	(223,132,'/system/preferences/','Save','__SavePreferences'),
	(229,133,'/frontend/','FrontendPrePageResolve','__checkForMaintenanceMode'),
	(230,133,'/frontend/','FrontendParamsResolve','__addParam'),
	(235,136,'/frontend/','EventPreSaveFilter','eventPreSaveFilter'),
	(236,137,'/system/preferences/','AddCustomPreferenceFieldsets','__addPreferences'),
	(237,137,'/system/preferences/','Save','__savePreferences'),
	(238,138,'/frontend/','FrontendParamsResolve','addParam'),
	(239,138,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(240,139,'/frontend/','FrontendPageResolved','manipulatePageData'),
	(241,139,'/system/preferences/','AddCustomPreferenceFieldsets','preferences'),
	(242,140,'/frontend/','FrontendOutputPostGenerate','parse_html'),
	(243,140,'/frontend/','FrontendPageResolved','setRenderTrigger'),
	(244,140,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(259,146,'/backend/','InitaliseAdminPageHead','InitaliseAdminPageHead'),
	(246,142,'/backend/','InitaliseAdminPageHead','appendScriptToHead'),
	(247,143,'/publish/new/','EntryPostCreate','indexEntry'),
	(248,143,'/publish/edit/','EntryPostEdit','indexEntry'),
	(249,143,'/publish/','EntryPostDelete','deleteEntryIndex'),
	(250,143,'/frontend/','EventPostSaveFilter','indexEntry'),
	(251,143,'/backend/','DashboardPanelRender','renderPanel'),
	(252,143,'/backend/','DashboardPanelTypes','dashboardPanelTypes'),
	(292,144,'/blueprints/datasources/','DatasourcePostCreate','__clearSubsectionCache'),
	(293,144,'/blueprints/datasources/','DatasourcePostEdit','__clearSubsectionCache'),
	(294,144,'/blueprints/datasources/','DatasourcePreDelete','__clearSubsectionCache'),
	(295,144,'/frontend/','DataSourceEntriesBuilt','__prepareSubsection'),
	(285,147,'/blueprints/pages/','AppendPageContent','appendAssociationsDrawer'),
	(266,148,'/system/preferences/','AddCustomPreferenceFieldsets','appendPreferences'),
	(267,148,'/system/preferences/','Save','__SavePreferences'),
	(268,149,'/backend/','InitaliseAdminPageHead','appendAssets'),
	(269,150,'/frontend/','FrontendDevKitResolve','frontendDevKitResolve'),
	(270,150,'/frontend/','ManipulateDevKitNavigation','manipulateDevKitNavigation'),
	(271,151,'/backend/','AdminPagePreGenerate','appendConditionalizer'),
	(272,151,'/blueprints/datasources/','DatasourcePreCreate','appendDataSourceConditions'),
	(273,151,'/blueprints/datasources/','DatasourcePreEdit','appendDataSourceConditions'),
	(274,151,'/frontend/','DataSourcePreExecute','conditionalize'),
	(275,152,'/backend/','InitaliseAdminPageHead','initaliseAdminPageHead'),
	(276,153,'/publish/new/','EntryPostCreate','compileBackendFields'),
	(277,153,'/publish/edit/','EntryPostEdit','compileBackendFields'),
	(278,153,'/frontend/','EventPostSaveFilter','compileFrontendFields'),
	(279,154,'/system/preferences/','AddCustomPreferenceFieldsets','AddCustomPreferenceFieldsets'),
	(280,154,'/backend/','InitaliseAdminPageHead','InitaliseAdminPageHead'),
	(281,155,'/backend/','InitaliseAdminPageHead','appendJS'),
	(282,155,'/backend/','AdminPagePreGenerate','appendElement'),
	(283,155,'/publish/edit/','EntryPostEdit','entryPostEdit'),
	(284,155,'/publish/new/','EntryPostCreate','entryPostEdit'),
	(291,144,'/backend/','AdminPagePreGenerate','__appendAssets'),
	(296,158,'/backend/','InitaliseAdminPageHead','initaliseAdminPageHead');

/*!40000 ALTER TABLE `sym_extensions_delegates` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields` WRITE;
/*!40000 ALTER TABLE `sym_fields` DISABLE KEYS */;

INSERT INTO `sym_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`)
VALUES
	(70,'Visible','visible','checkbox',7,'no',6,'sidebar','yes'),
	(56,'Page','page','pages',7,'yes',2,'sidebar','yes'),
	(29,'Description','description','textarea',7,'yes',5,'sidebar','yes'),
	(59,'Image','image','upload',5,'yes',1,'sidebar','yes'),
	(24,'Caption','caption','input',5,'no',0,'main','yes'),
	(46,'ID','id','reflection',5,'no',2,'sidebar','yes'),
	(58,'Image','image','subsectionmanager',7,'no',4,'sidebar','yes'),
	(27,'Content','content','textarea',7,'no',3,'main','no'),
	(26,'Title','title','input',7,'yes',0,'main','yes'),
	(69,'Tagline','tagline','textarea',7,'no',1,'main','no');

/*!40000 ALTER TABLE `sym_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_author
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_author`;

CREATE TABLE `sym_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_checkbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_checkbox`;

CREATE TABLE `sym_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_checkbox` WRITE;
/*!40000 ALTER TABLE `sym_fields_checkbox` DISABLE KEYS */;

INSERT INTO `sym_fields_checkbox` (`id`, `field_id`, `default_state`, `description`)
VALUES
	(36,70,'off',NULL);

/*!40000 ALTER TABLE `sym_fields_checkbox` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_conditionalizer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_conditionalizer`;

CREATE TABLE `sym_fields_conditionalizer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `expression` text,
  `show_errors` enum('yes','no') NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sym_fields_date
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_date`;

CREATE TABLE `sym_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_datetime
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_datetime`;

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



# Dump of table sym_fields_input
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_input`;

CREATE TABLE `sym_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_input` WRITE;
/*!40000 ALTER TABLE `sym_fields_input` DISABLE KEYS */;

INSERT INTO `sym_fields_input` (`id`, `field_id`, `validator`)
VALUES
	(65,26,NULL),
	(56,24,NULL);

/*!40000 ALTER TABLE `sym_fields_input` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_order_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_order_entries`;

CREATE TABLE `sym_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_pages`;

CREATE TABLE `sym_fields_pages` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `page_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_pages` WRITE;
/*!40000 ALTER TABLE `sym_fields_pages` DISABLE KEYS */;

INSERT INTO `sym_fields_pages` (`id`, `field_id`, `allow_multiple_selection`, `page_types`)
VALUES
	(15,56,'no',NULL);

/*!40000 ALTER TABLE `sym_fields_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_reflection
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_reflection`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_reflection` WRITE;
/*!40000 ALTER TABLE `sym_fields_reflection` DISABLE KEYS */;

INSERT INTO `sym_fields_reflection` (`id`, `field_id`, `xsltfile`, `expression`, `formatter`, `override`, `hide`, `fetch_associated_counts`)
VALUES
	(2,46,NULL,'{entry/@id}','none',NULL,'yes','no');

/*!40000 ALTER TABLE `sym_fields_reflection` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_search_index`;

CREATE TABLE `sym_fields_search_index` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_select
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_select`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_selectbox_link
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_selectbox_link`;

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



# Dump of table sym_fields_subsectionmanager
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_subsectionmanager`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_subsectionmanager` WRITE;
/*!40000 ALTER TABLE `sym_fields_subsectionmanager` DISABLE KEYS */;

INSERT INTO `sym_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`)
VALUES
	(40,58,'5',NULL,'{$caption}',NULL,1,1,0,1,1,1,1,1,0);

/*!40000 ALTER TABLE `sym_fields_subsectionmanager` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_subsectiontabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_subsectiontabs`;

CREATE TABLE `sym_fields_subsectiontabs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `static_tabs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_taglist
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_taglist`;

CREATE TABLE `sym_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_textarea
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_textarea`;

CREATE TABLE `sym_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_textarea` WRITE;
/*!40000 ALTER TABLE `sym_fields_textarea` DISABLE KEYS */;

INSERT INTO `sym_fields_textarea` (`id`, `field_id`, `formatter`, `size`)
VALUES
	(64,27,'markdown_extra_with_smartypants',15),
	(65,29,'markdown_extra_with_smartypants',5),
	(63,69,'markdown_extra_with_smartypants',5);

/*!40000 ALTER TABLE `sym_fields_textarea` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_fields_textbox
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_textbox`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_fields_uniqueupload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_uniqueupload`;

CREATE TABLE `sym_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_fields_upload
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_fields_upload`;

CREATE TABLE `sym_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_fields_upload` WRITE;
/*!40000 ALTER TABLE `sym_fields_upload` DISABLE KEYS */;

INSERT INTO `sym_fields_upload` (`id`, `field_id`, `destination`, `validator`)
VALUES
	(6,59,'/workspace/uploads/images','/\\.(?:bmp|gif|jpe?g|png)$/i');

/*!40000 ALTER TABLE `sym_fields_upload` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_forgotpass
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_forgotpass`;

CREATE TABLE `sym_forgotpass` (
  `author_id` int(11) NOT NULL DEFAULT '0',
  `token` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `expiry` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`author_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table sym_gpl_params
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_gpl_params`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sym_gpl_params` WRITE;
/*!40000 ALTER TABLE `sym_gpl_params` DISABLE KEYS */;

INSERT INTO `sym_gpl_params` (`id`, `set_id`, `param`, `value`, `type`, `sortorder`)
VALUES
	(1,1,'website-subtitle','brewing Dapper & Wise coffee from Baseline, Tanasbourne & Cannon Beach','Parameter definition',0);

/*!40000 ALTER TABLE `sym_gpl_params` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_gpl_sets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_gpl_sets`;

CREATE TABLE `sym_gpl_sets` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `params` int(11) unsigned DEFAULT NULL,
  `exclude_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `sym_gpl_sets` WRITE;
/*!40000 ALTER TABLE `sym_gpl_sets` DISABLE KEYS */;

INSERT INTO `sym_gpl_sets` (`id`, `name`, `params`, `exclude_page`)
VALUES
	(1,'Main',1,'67,75');

/*!40000 ALTER TABLE `sym_gpl_sets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages`;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages` WRITE;
/*!40000 ALTER TABLE `sym_pages` DISABLE KEYS */;

INSERT INTO `sym_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`)
VALUES
	(64,NULL,'Home','home',NULL,'category','logged_in_author','contact_message',8),
	(67,NULL,'RSS','rss',NULL,NULL,NULL,NULL,16),
	(75,NULL,'Maintenance','maintenance',NULL,NULL,NULL,NULL,17);

/*!40000 ALTER TABLE `sym_pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_pages_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_pages_types`;

CREATE TABLE `sym_pages_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `page_id` int(11) unsigned NOT NULL,
  `type` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_pages_types` WRITE;
/*!40000 ALTER TABLE `sym_pages_types` DISABLE KEYS */;

INSERT INTO `sym_pages_types` (`id`, `page_id`, `type`)
VALUES
	(656,75,'hidden'),
	(694,64,'index'),
	(463,67,'XML'),
	(462,67,'hidden'),
	(693,64,'hidden'),
	(657,75,'maintenance');

/*!40000 ALTER TABLE `sym_pages_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_search_index
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_search_index`;

CREATE TABLE `sym_search_index` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) NOT NULL,
  `section_id` int(11) NOT NULL,
  `data` text,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_search_index_entry_keywords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_search_index_entry_keywords`;

CREATE TABLE `sym_search_index_entry_keywords` (
  `entry_id` int(11) DEFAULT NULL,
  `keyword_id` int(11) DEFAULT NULL,
  `frequency` int(11) DEFAULT NULL,
  KEY `entry_id` (`entry_id`),
  KEY `keyword_id` (`keyword_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_search_index_keywords
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_search_index_keywords`;

CREATE TABLE `sym_search_index_keywords` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `keyword` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  FULLTEXT KEY `keyword` (`keyword`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table sym_search_index_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_search_index_logs`;

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



# Dump of table sym_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections`;

CREATE TABLE `sym_sections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortorder` int(11) NOT NULL DEFAULT '0',
  `hidden` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `navigation_group` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'Content',
  PRIMARY KEY (`id`),
  UNIQUE KEY `handle` (`handle`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections` WRITE;
/*!40000 ALTER TABLE `sym_sections` DISABLE KEYS */;

INSERT INTO `sym_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`)
VALUES
	(5,'Images','images',2,'no','Admin'),
	(7,'Page Data','page-data',1,'no','Admin');

/*!40000 ALTER TABLE `sym_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sections_association
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sections_association`;

CREATE TABLE `sym_sections_association` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `parent_section_id` int(11) unsigned NOT NULL,
  `parent_section_field_id` int(11) unsigned DEFAULT NULL,
  `child_section_id` int(11) unsigned NOT NULL,
  `child_section_field_id` int(11) unsigned NOT NULL,
  `hide_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `parent_section_id` (`parent_section_id`,`child_section_id`,`child_section_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sections_association` WRITE;
/*!40000 ALTER TABLE `sym_sections_association` DISABLE KEYS */;

INSERT INTO `sym_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`)
VALUES
	(55,7,58,5,58,'yes');

/*!40000 ALTER TABLE `sym_sections_association` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table sym_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sym_sessions`;

CREATE TABLE `sym_sessions` (
  `session` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `session_expires` int(10) unsigned NOT NULL DEFAULT '0',
  `session_data` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`session`),
  KEY `session_expires` (`session_expires`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `sym_sessions` WRITE;
/*!40000 ALTER TABLE `sym_sessions` DISABLE KEYS */;

INSERT INTO `sym_sessions` (`session`, `session_expires`, `session_data`)
VALUES
	('v5u3nj92khkfk6an12cron9de0',1381297502,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}'),
	('4qq7vl9e48kcv35rkas1ph5cp4',1381250636,'sym-|a:2:{s:8:\"username\";s:8:\"jdsimcoe\";s:4:\"pass\";s:92:\"PBKDF2v1|10000|f67c6cbdc923eaeb6553|a+4fqcBI/Td+1noLElgzCp72J5bIAE+Jvbe9tiZ7DguSOIYQ3MPTEQ==\";}');

/*!40000 ALTER TABLE `sym_sessions` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
