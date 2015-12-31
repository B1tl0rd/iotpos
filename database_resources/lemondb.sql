-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: lemondb
-- ------------------------------------------------------
-- Server version	5.5.46-0+deb7u1

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
-- Table structure for table `balances`
--

DROP TABLE IF EXISTS `balances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `balances` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datetime_start` datetime NOT NULL DEFAULT '2009-01-01 00:00:00',
  `datetime_end` datetime NOT NULL DEFAULT '2009-01-01 00:00:00',
  `userid` bigint(20) unsigned NOT NULL,
  `usern` varchar(50) NOT NULL,
  `initamount` double NOT NULL,
  `in` double NOT NULL,
  `out` double NOT NULL,
  `cash` double NOT NULL,
  `card` double NOT NULL,
  `transactions` varchar(1000) NOT NULL,
  `terminalnum` bigint(20) unsigned NOT NULL,
  `cashflows` varchar(1000) DEFAULT '',
  `done` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`datetime_start`,`datetime_end`,`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (1,'2015-12-28 12:11:06','2015-12-28 12:11:06',0,'',0,0,0,0,0,'',1,'',0),(2,'2015-12-28 12:11:06','2015-12-28 12:11:06',1,'admin',0,0,0,0,0,'',1,'',0),(3,'2015-12-28 12:11:06','2015-12-28 12:11:06',1,'admin',0,0,0,0,0,'',1,'',0),(4,'2015-12-28 12:16:08','2015-12-28 12:16:08',1,'admin',0,0,0,0,0,'',1,'',0),(5,'2015-12-28 12:16:08','2015-12-28 12:16:08',1,'admin',0,0,0,0,0,'',1,'',0),(6,'2015-12-28 12:22:52','2015-12-28 12:25:32',1,'admin',100,120,0,220,0,'4,5',1,NULL,1),(7,'2015-12-28 12:36:21','2015-12-28 21:54:11',1,'admin',100,60,0,160,0,'7',1,NULL,1),(8,'2015-12-28 22:05:11','2015-12-28 22:09:54',1,'admin',100,0,0,100,0,'',1,NULL,1),(9,'2015-12-28 22:10:11','2015-12-28 22:13:26',1,'admin',100,180,0,280,0,'10,11,12',1,NULL,1),(10,'2015-12-28 22:22:07','2015-12-28 22:22:49',1,'admin',100,60,0,160,0,'15',1,NULL,1),(11,'2015-12-28 22:23:17','2015-12-28 22:23:58',1,'admin',100,0,0,100,0,'',1,NULL,1),(12,'2015-12-28 22:32:35','2015-12-28 22:32:40',1,'admin',100,0,0,100,0,'',1,NULL,1),(13,'2015-12-28 22:32:52','2015-12-28 22:32:52',1,'admin',100,0,0,100,0,'',1,'',0),(14,'2015-12-28 22:32:52','2015-12-28 22:34:22',1,'admin',100,0,0,100,0,'',1,NULL,1),(15,'2015-12-28 22:34:41','2015-12-28 22:34:51',1,'admin',100,60,0,160,0,'21',1,NULL,1),(16,'2015-12-28 22:38:38','2015-12-28 22:38:58',1,'admin',100,60,0,160,0,'23',1,NULL,1),(17,'2015-12-28 22:43:57','2015-12-28 22:44:54',1,'admin',100,60,0,160,0,'25',1,NULL,1),(18,'2015-12-28 22:45:56','2015-12-28 22:46:52',1,'admin',100,60,0,160,0,'27',1,NULL,1),(19,'2015-12-29 10:07:01','2015-12-29 10:07:31',1,'admin',100,10,0,110,0,'29',1,NULL,1),(20,'2015-12-29 10:11:16','2015-12-29 11:51:40',1,'admin',100,190,0,290,0,'31,32,33,34',1,NULL,0),(21,'2015-12-29 13:00:38','2015-12-29 13:00:38',1,'admin',0,0,0,0,0,'',1,'',0),(22,'2015-12-29 17:36:30','2015-12-29 17:36:56',1,'admin',100,60,0,160,0,'36',1,NULL,1),(23,'2015-12-29 17:37:20','2015-12-29 17:37:20',1,'admin',100,0,0,100,0,'',1,NULL,0),(24,'2015-12-29 17:37:20','2015-12-29 17:37:41',1,'admin',100,60,0,160,0,'39',1,NULL,1),(25,'2015-12-29 17:38:21','2015-12-29 17:39:32',1,'admin',100,60,0,160,0,'41',1,NULL,1),(26,'2015-12-29 17:40:25','2015-12-29 17:40:55',1,'admin',100,60,0,160,0,'43',1,NULL,1),(27,'2015-12-29 18:56:30','2015-12-29 18:56:37',1,'admin',100,0,0,100,0,'',1,NULL,1),(28,'2015-12-29 18:57:01','2015-12-29 18:57:13',1,'admin',100,60,0,160,0,'46',1,NULL,1),(29,'2015-12-29 19:00:15','2015-12-29 19:00:28',1,'admin',100,60,0,160,0,'48',1,NULL,1),(30,'2015-12-29 19:35:35','2015-12-29 19:35:46',1,'admin',100,60,0,160,0,'50',1,NULL,1),(31,'2015-12-29 19:36:18','2015-12-29 19:36:18',1,'admin',100,0,0,100,0,'',1,'',0),(32,'2015-12-29 19:36:18','2015-12-29 19:37:31',1,'admin',100,60,0,160,0,'53',1,NULL,1),(33,'2015-12-29 19:38:09','2015-12-29 19:38:33',1,'admin',100,60,0,160,0,'55',1,NULL,1),(34,'2015-12-29 19:41:24','2015-12-29 19:41:38',1,'admin',100,60,0,160,0,'57',1,NULL,1),(35,'2015-12-29 19:42:06','2015-12-29 19:42:06',1,'admin',100,0,0,100,0,'',1,'',0),(36,'2015-12-29 19:42:06','2015-12-29 19:49:02',1,'admin',100,60,0,160,0,'60',1,NULL,1),(37,'2015-12-29 19:53:45','2015-12-29 19:54:08',1,'admin',100,60,0,160,0,'62',1,NULL,1),(38,'2015-12-29 19:55:52','2015-12-29 19:56:07',1,'admin',100,60,0,160,0,'64',1,NULL,1),(39,'2015-12-29 19:58:54','2015-12-29 19:59:26',1,'admin',100,120,0,220,0,'66,67',1,NULL,1),(40,'2015-12-29 20:01:50','2015-12-29 21:07:01',1,'admin',100,100,30,170,0,'69',1,NULL,1),(41,'2015-12-30 00:15:58','2015-12-30 00:43:22',1,'admin',100,0,0,100,0,'',1,NULL,1),(42,'2015-12-30 00:54:31','2015-12-30 00:54:31',1,'admin',100,0,0,100,0,'',1,NULL,0),(43,'2015-12-30 00:54:31','2015-12-30 01:22:33',1,'admin',100,0,0,100,0,'',1,NULL,1),(44,'2015-12-30 10:41:14','2015-12-30 10:42:15',1,'admin',100,0,0,100,0,'',1,NULL,1),(45,'2015-12-30 11:10:14','2015-12-30 11:14:08',1,'admin',100,80,5,175,0,'75,76',1,NULL,1),(46,'2015-12-30 11:20:30','2015-12-30 11:22:52',1,'admin',100,60,1,159,0,'78',1,NULL,1),(47,'2015-12-30 12:07:10','2015-12-30 12:15:29',1,'admin',100,0,0,100,0,'',1,NULL,1),(48,'2015-12-30 12:20:54','2015-12-30 12:27:08',1,'admin',100,60,12,148,0,'81',1,NULL,1),(49,'2015-12-30 13:36:00','2015-12-30 13:36:12',1,'admin',100,60,0,160,0,'83',1,NULL,1),(50,'2015-12-30 21:34:41','2015-12-30 21:35:34',1,'admin',100,0,0,100,0,'',1,NULL,1),(51,'2015-12-30 22:01:14','2015-12-30 22:05:30',1,'admin',100,0,0,100,0,'',1,NULL,1),(52,'2015-12-30 22:05:55','2015-12-30 22:06:21',1,'admin',100,140,0.009999999999990905,239.99,0,'88',1,NULL,1),(53,'2015-12-30 23:44:08','2015-12-30 23:44:19',1,'admin',100,60,0,160,0,'90',1,NULL,1),(54,'2015-12-30 23:44:49','2015-12-30 23:45:11',1,'admin',100,60,0,160,0,'92',1,NULL,1),(55,'2015-12-30 23:48:19','2015-12-30 23:48:37',1,'admin',100,80,0.010000000000005116,179.99,0,'94',1,NULL,1),(56,'2015-12-30 23:49:11','2015-12-30 23:49:35',1,'admin',100,80,0.010000000000005116,179.99,0,'96',1,NULL,1),(57,'2015-12-30 23:50:14','2015-12-30 23:50:31',1,'admin',100,80,0.010000000000005116,179.99,0,'98',1,NULL,1),(58,'2015-12-31 00:07:27','2015-12-31 00:08:23',1,'admin',100,45,0,145,0,'100',1,NULL,1);
/*!40000 ALTER TABLE `balances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bool_values`
--

DROP TABLE IF EXISTS `bool_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bool_values` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bool_values`
--

LOCK TABLES `bool_values` WRITE;
/*!40000 ALTER TABLE `bool_values` DISABLE KEYS */;
INSERT INTO `bool_values` VALUES (0,'NO'),(1,'YES');
/*!40000 ALTER TABLE `bool_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bundle_same`
--

DROP TABLE IF EXISTS `bundle_same`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bundle_same` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` double NOT NULL DEFAULT '2',
  `price` double NOT NULL DEFAULT '2',
  PRIMARY KEY (`id`),
  KEY `SEC` (`product_id`,`qty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bundle_same`
--

LOCK TABLES `bundle_same` WRITE;
/*!40000 ALTER TABLE `bundle_same` DISABLE KEYS */;
/*!40000 ALTER TABLE `bundle_same` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cardtypes`
--

DROP TABLE IF EXISTS `cardtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cardtypes` (
  `typeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cardtypes`
--

LOCK TABLES `cardtypes` WRITE;
/*!40000 ALTER TABLE `cardtypes` DISABLE KEYS */;
INSERT INTO `cardtypes` VALUES (1,'None'),(2,'Credit VISA'),(3,'Credit MC'),(4,'Debit VISA'),(5,'Debit MC');
/*!40000 ALTER TABLE `cardtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashflow`
--

DROP TABLE IF EXISTS `cashflow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashflow` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` smallint(5) unsigned NOT NULL DEFAULT '1',
  `userid` bigint(20) NOT NULL DEFAULT '1',
  `reason` varchar(255) DEFAULT '',
  `amount` double unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2009-01-01',
  `time` time NOT NULL DEFAULT '00:00:00',
  `terminalnum` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `SEC` (`date`,`time`,`type`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashflow`
--

LOCK TABLES `cashflow` WRITE;
/*!40000 ALTER TABLE `cashflow` DISABLE KEYS */;
/*!40000 ALTER TABLE `cashflow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cashflowtypes`
--

DROP TABLE IF EXISTS `cashflowtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cashflowtypes` (
  `typeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cashflowtypes`
--

LOCK TABLES `cashflowtypes` WRITE;
/*!40000 ALTER TABLE `cashflowtypes` DISABLE KEYS */;
INSERT INTO `cashflowtypes` VALUES (1,'Normal cash OUT'),(2,'Money return on ticket cancel'),(3,'Money return on product return'),(4,'Normal Cash IN'),(5,'Cash IN Reservation'),(6,'Cash OUT Reservation'),(7,'Cash IN Credit Payment'),(8,'Cash IN Debit');
/*!40000 ALTER TABLE `cashflowtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `catid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`catid`),
  KEY `SEC` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'General');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(13) DEFAULT '000001',
  `name` varchar(255) DEFAULT '',
  `since` date NOT NULL DEFAULT '2009-01-01',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phone_movil` varchar(50) DEFAULT NULL,
  `points` bigint(20) unsigned DEFAULT '0',
  `discount` double NOT NULL,
  `photo` blob,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'000001','General','2009-01-01',NULL,NULL,NULL,0,0,NULL);
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `firstrun` varchar(30) NOT NULL,
  `taxIsIncludedInPrice` tinyint(1) NOT NULL DEFAULT '1',
  `storeLogo` blob,
  `storeName` varchar(255) DEFAULT NULL,
  `storeAddress` varchar(255) DEFAULT NULL,
  `storePhone` varchar(100) DEFAULT NULL,
  `logoOnTop` tinyint(1) NOT NULL DEFAULT '1',
  `useCUPS` tinyint(1) NOT NULL DEFAULT '1',
  `smallPrint` tinyint(1) NOT NULL DEFAULT '1',
  `db_version` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`firstrun`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES ('yes, it is February 6 1978',0,'','IotPOS store','','',1,0,1,'0950');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credit_history`
--

DROP TABLE IF EXISTS `credit_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credit_history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customerid` bigint(20) unsigned NOT NULL,
  `saleid` bigint(20) unsigned NOT NULL DEFAULT '0',
  `amount` double NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `time` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SEC` (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credit_history`
--

LOCK TABLES `credit_history` WRITE;
/*!40000 ALTER TABLE `credit_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `credit_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `credits`
--

DROP TABLE IF EXISTS `credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `credits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `customerid` bigint(20) unsigned NOT NULL,
  `total` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`customerid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `credits`
--

LOCK TABLES `credits` WRITE;
/*!40000 ALTER TABLE `credits` DISABLE KEYS */;
/*!40000 ALTER TABLE `credits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currencies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(512) DEFAULT NULL,
  `factor` double NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `currencies`
--

LOCK TABLES `currencies` WRITE;
/*!40000 ALTER TABLE `currencies` DISABLE KEYS */;
/*!40000 ALTER TABLE `currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departments`
--

DROP TABLE IF EXISTS `departments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departments`
--

LOCK TABLES `departments` WRITE;
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` VALUES (1,'General');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturas_cbb`
--

DROP TABLE IF EXISTS `facturas_cbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturas_cbb` (
  `fecha` date NOT NULL DEFAULT '2012-01-01',
  `folio` varchar(100) NOT NULL,
  `folio_num_autorizacion` varchar(100) NOT NULL,
  `folio_fecha_autorizacion` date NOT NULL,
  `valida` tinyint(1) NOT NULL DEFAULT '1',
  `nombre_cliente` varchar(100) DEFAULT '',
  `rfc_cliente` varchar(100) DEFAULT '',
  `direccion_cliente` varchar(255) DEFAULT '',
  `transaction_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `subtotal` double unsigned NOT NULL DEFAULT '0',
  `impuestos` double unsigned NOT NULL DEFAULT '0',
  `impuestos_tasa` double unsigned NOT NULL DEFAULT '0',
  `descuentos` double unsigned NOT NULL DEFAULT '0',
  `total` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folio`),
  KEY `SEC` (`nombre_cliente`,`rfc_cliente`,`valida`,`fecha`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturas_cbb`
--

LOCK TABLES `facturas_cbb` WRITE;
/*!40000 ALTER TABLE `facturas_cbb` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturas_cbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folios_cbb`
--

DROP TABLE IF EXISTS `folios_cbb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folios_cbb` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `pool_id` varchar(100) NOT NULL,
  `numero` varchar(100) NOT NULL,
  `usado` tinyint(1) NOT NULL DEFAULT '1',
  `valido` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`numero`),
  UNIQUE KEY `numero` (`numero`),
  KEY `SEC` (`pool_id`,`usado`,`valido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folios_cbb`
--

LOCK TABLES `folios_cbb` WRITE;
/*!40000 ALTER TABLE `folios_cbb` DISABLE KEYS */;
/*!40000 ALTER TABLE `folios_cbb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `folios_pool`
--

DROP TABLE IF EXISTS `folios_pool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `folios_pool` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fecha_aprobacion` date NOT NULL,
  `num_aprobacion` varchar(100) NOT NULL,
  `folio_inicial` varchar(100) NOT NULL,
  `folio_final` varchar(100) NOT NULL,
  `cbb` blob,
  `cantidad` bigint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`num_aprobacion`),
  UNIQUE KEY `num_aprobacion` (`num_aprobacion`),
  KEY `SEC` (`fecha_aprobacion`,`num_aprobacion`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `folios_pool`
--

LOCK TABLES `folios_pool` WRITE;
/*!40000 ALTER TABLE `folios_pool` DISABLE KEYS */;
/*!40000 ALTER TABLE `folios_pool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` bigint(20) unsigned NOT NULL,
  `date` varchar(20) NOT NULL DEFAULT '2009-01-01',
  `time` varchar(20) NOT NULL DEFAULT '00:00',
  `action` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,1,'2015-12-28','12:21','[SQUEEZE] Purchase #1 - 100 x Producto1 (1)'),(2,1,'2015-12-28','12:21','[SQUEEZE] Purchase #2 - 100 x Producto2 (2)'),(3,1,'2015-12-28','12:22','[SQUEEZE] Purchase #3 - 0 x Producto3 (3)'),(4,1,'2015-12-28','12:22','[SQUEEZE] Correción de Inventario: [3] de 0 a 100. Razón:Adjust'),(5,1,'2015-12-28','12:22','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(6,1,'2015-12-28','12:36','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(7,1,'2015-12-28','22:05','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(8,1,'2015-12-28','22:10','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(9,1,'2015-12-28','22:22','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(10,1,'2015-12-28','22:22','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:22'),(11,1,'2015-12-28','22:22','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:22'),(12,1,'2015-12-28','22:23','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(13,1,'2015-12-28','22:23','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:23'),(14,1,'2015-12-28','22:32','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(15,1,'2015-12-28','22:32','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(16,1,'2015-12-28','22:32','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:32'),(17,1,'2015-12-28','22:33','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:33'),(18,1,'2015-12-28','22:34','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(19,1,'2015-12-28','22:38','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(20,1,'2015-12-28','22:43','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(21,1,'2015-12-28','22:44','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:44'),(22,1,'2015-12-28','22:44','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:44'),(23,1,'2015-12-28','22:44','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:44'),(24,1,'2015-12-28','22:45','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(25,1,'2015-12-28','22:46','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-28 22:46'),(26,1,'2015-12-29','10:07','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(27,1,'2015-12-29','10:07','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-29 10:07'),(28,1,'2015-12-29','10:11','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(29,1,'2015-12-29','17:36','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(30,1,'2015-12-29','17:37','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(31,1,'2015-12-29','17:38','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(32,1,'2015-12-29','17:40','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(33,1,'2015-12-29','18:56','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(34,1,'2015-12-29','18:57','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(35,1,'2015-12-29','19:00','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(36,1,'2015-12-29','19:35','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(37,1,'2015-12-29','19:36','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(38,1,'2015-12-29','19:36','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-29 19:36'),(39,1,'2015-12-29','19:36','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-29 19:36'),(40,1,'2015-12-29','19:37','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-29 19:37'),(41,1,'2015-12-29','19:38','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(42,1,'2015-12-29','19:38','[ LEMON ] Reporte de Fin del día impreso por Administrator en terminal 1 el 2015-12-29 19:38'),(43,1,'2015-12-29','19:41','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(44,1,'2015-12-29','19:42','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(45,1,'2015-12-29','19:53','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(46,1,'2015-12-29','19:55','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(47,1,'2015-12-29','19:58','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(48,1,'2015-12-29','20:01','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(49,1,'2015-12-30','00:15','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(50,1,'2015-12-30','00:54','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(51,1,'2015-12-30','10:41','[ LEMON ] Operaciones iniciadas por Administrator en terminal 1'),(52,1,'2015-12-30','11:10','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(53,1,'2015-12-30','11:20','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(54,1,'2015-12-30','12:07','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(55,1,'2015-12-30','12:20','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(56,1,'2015-12-30','13:36','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(57,1,'2015-12-30','21:34','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(58,1,'2015-12-30','22:01','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(59,1,'2015-12-30','22:05','[SQUEEZE] Purchase #87 - 1 x Paquete1 (4)'),(60,1,'2015-12-30','22:05','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(61,1,'2015-12-30','23:44','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(62,1,'2015-12-30','23:44','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(63,1,'2015-12-30','23:48','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(64,1,'2015-12-30','23:49','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(65,1,'2015-12-30','23:50','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1'),(66,1,'2015-12-31','00:07','[ LEMON ] Operaciones iniciadas por Administrador en terminal 1');
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_category_subcategory`
--

DROP TABLE IF EXISTS `m2m_category_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m2m_category_subcategory` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category` int(10) unsigned DEFAULT '0',
  `subcategory` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`subcategory`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_category_subcategory`
--

LOCK TABLES `m2m_category_subcategory` WRITE;
/*!40000 ALTER TABLE `m2m_category_subcategory` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2m_category_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m2m_department_category`
--

DROP TABLE IF EXISTS `m2m_department_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `m2m_department_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `department` int(10) unsigned DEFAULT '0',
  `category` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`department`,`category`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m2m_department_category`
--

LOCK TABLES `m2m_department_category` WRITE;
/*!40000 ALTER TABLE `m2m_department_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `m2m_department_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `measures`
--

DROP TABLE IF EXISTS `measures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `measures` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
INSERT INTO `measures` VALUES (1,'Pc'),(2,'Kg');
/*!40000 ALTER TABLE `measures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `discount` double NOT NULL,
  `datestart` date NOT NULL DEFAULT '2009-01-01',
  `dateend` date NOT NULL DEFAULT '2009-01-01',
  `product_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offers`
--

LOCK TABLES `offers` WRITE;
/*!40000 ALTER TABLE `offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paytypes`
--

DROP TABLE IF EXISTS `paytypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paytypes` (
  `typeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paytypes`
--

LOCK TABLES `paytypes` WRITE;
/*!40000 ALTER TABLE `paytypes` DISABLE KEYS */;
INSERT INTO `paytypes` VALUES (1,'Cash'),(2,'Card'),(3,'Internal Credit');
/*!40000 ALTER TABLE `paytypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `products` (
  `code` bigint(20) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT 'unknown',
  `price` double unsigned NOT NULL DEFAULT '0',
  `stockqty` double NOT NULL DEFAULT '0',
  `cost` double unsigned NOT NULL DEFAULT '0',
  `soldunits` double unsigned NOT NULL DEFAULT '0',
  `datelastsold` date DEFAULT '2009-01-01',
  `units` int(10) unsigned NOT NULL DEFAULT '0',
  `taxpercentage` double unsigned NOT NULL DEFAULT '15',
  `extrataxes` double unsigned NOT NULL DEFAULT '0',
  `photo` blob,
  `department` int(10) unsigned NOT NULL DEFAULT '1',
  `category` int(10) unsigned NOT NULL DEFAULT '1',
  `subcategory` int(10) unsigned DEFAULT '1',
  `points` int(10) unsigned NOT NULL DEFAULT '0',
  `alphacode` varchar(30) DEFAULT NULL,
  `vendorcode` varchar(30) DEFAULT NULL,
  `lastproviderid` int(10) unsigned NOT NULL DEFAULT '1',
  `isARawProduct` tinyint(1) NOT NULL DEFAULT '0',
  `isAGroup` tinyint(1) NOT NULL DEFAULT '0',
  `groupElements` varchar(1000) DEFAULT '',
  `groupPriceDrop` double unsigned NOT NULL DEFAULT '0',
  `taxmodel` bigint(20) unsigned NOT NULL DEFAULT '1',
  `hasUnlimitedStock` tinyint(1) NOT NULL DEFAULT '0',
  `isNotDiscountable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `SEC` (`department`,`category`,`subcategory`,`name`,`alphacode`,`vendorcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Producto1',10,47,5,53,'2015-12-31',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0H\0\0\05�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0�7\�˭\0\0hIDATx�\�}h$\�}\�?*kx&(e�d.�7u\�\�\�Ku \�\�4\'��I\�!Z,\�\�&\�>\Z\�\�49ٍqW��-�p���\�u F\�rF2؜\�s{�`#\�j]rdLs0\�\�n;x@�㙙��ս\�\�\�\�\�\�>;o\�w~/\�\�oF0�\00�\00�\00�\00�\0}\�\��g��_�@��/\�%l�L6�ӗ9\��c#�\�Eq׸��}\�B��_\�\�\�>�A_�6@��.\��E6ד�\nl]\�FJ����#���C\�@�D?�\�V�%���&H�6ғ؞T�^���>ڸ5�8\\��)!>g 2	�!n˃\�h\\\�ƖK:Y\�u ���n>n�W����:�2	�AN 0,\���p%\�s���\�ｽ/\0=�\�\�=>\��\����\�#\0- \r�HB�\�(\����\�\��$R�H���m�\�I\�Q�G�1\�Y�\0\\$z��\�\�\��-O��X�\�\�@�$\�)\�σ\�\�L��@9������Kۖ[\��VHJ��\�`��\��a`\�:\"�ҡ\�2C�&!�&�\��>�XW�\�\n��C\n�e�\\�� /�\�Ѕ�\�B@\�\�)�8m�����H)��5BP\�\r\�	\\)�\�\�X�̞\\\�\�\0Â�\�\n��q% t4\�2=��\�c�\�(\�\�c`�\�U�1\�a@$-��\"Q�<�\0�)\�WJ���,M\�\'N�t\�E�!p�H$=�\�iT�^@�\�\��\�t�c�\�\\6-g��u�aӓl:xR�׌�[�u\�q�����\�L\����8B��\�@�\'וG���x����<�{#_`�\�\��q\Z/\�1�\�ܙ\�p�\�LU͌���\�J*���l���+$\�s9p��Ye\�H�O��\��V� \�eyDNP\�	DN\�\�u�a�\��\�`\�X\�\�xq\��8$�ҝ\�MOQ���\�\�\�ڒ�\�\Z�\'ñ�\'\�X��Ez��\�\�\�\�-�ٟt\�1\�\nP��0?_�ס2]a��q%�ܝ$OfМZ]\�\�\�\�\�N[\�J�\�8!���F\�ꀲ^��!y�+h���B]�\�(\\d<�oKt=�l;\�:#\"(\�X\�_��\�<\0\��e)/\�\�=�}J?\�ĺU��C\�\�\�Qˣ!\�s�°� ��\��G*��R\��)\�\�8�r?�\�\Z;]G=��ř*�\')\�/�\�Q1�\�\�IE\"]\�e\�\�cD\�\�sT\�\�\�m�Xf�ت��f쳋Dx�S\�D\"S�CĂ�\\$\�%�n\�\�\�\�\��\�8H\�b#YÙr`���,\�s�TH\�\"_h}�z��Ӷ�%\Z\�L�\�v���DR�\�\��d���\�R��d|��\�\�7�\0\�\n��v,cw�c�\�L�J�o5\�<����j�\�\�\�\�G�8V�\�{+��\�~w�\����\�o\�~�\�\�\�\�;c���\�\�\�_�<�O{\�u�\'\��8bW��\�m*5f\� ��<�\�`^4��ĕ.\02��\�_�J�2��e�\�Ir$\�\'�\�$FވY�`�\�J�Ejo,�@99�\�t�\�%*Ot�\�\�[\r\Z/֙[]	\�k\�\�\�����r�g������\�6c;6�n�\�}�%\�^s��\�*\�v+T\�4@X@S:���P�\�o�[�}�7=\�nh�kХ\�}_�lwǦ�;S	}���Ȝ��\"�\�V)�\�v�\�\�lYX-�֎�Ӷ�\�N[�\�Eb���t�\�\�\�EfO/1��BmUM�ܙe&�7Ka_AeTQ+\"%s�8ٝT\��Nb�j+�����\"Id\�4\�@�\Z�_-\�>�H��+\�r�\�H&\��\�\�>>��\�v0\�}�\�\��l#��\�2䆡\'\�2��=5��&\Z`;Ͷ�\�|\�)}\' �-�|X0�@�\���v�\�J0�\�Y\�\�,3��,F>BϏ$\�\�n/=���\��\�c˲Ɖ��&v� B�e�o�\�ƎNO��\���\�Uv\��\�\�\�D�e\�̭��~+=bNt\���!��k3P��\"�y\�đǑa0@\�jL�`�ڙ:�\�e\�\�,�\�S7;4�cw�23�\� M\�I��\�\�Rj��똗\��K\�\�qR\�\�[�\�\�y�ҋ\�\�F��鲣\�{O�s\�J_,mIm-��\��\�\�^�\�G_V\�\Z��]Q��B�븸\�U\��\�vsP\�\�-�6\Zq[Nˊ�w�\�, �.\�\'_��m\��k+�`��\�\��g�~�\�\�JlY��\�\�~�H\�\�c����\�\�@�\�\�X��z:�6܉��w�\"\�\�\�\�I�q�\�j&���Hx�=�\r\�\�ġ!�Yo4zF,�Y�l�4Zz��ɓL|G�8�kL\"q���ɸ�\0V;N�H��\�VI㕸�8pw��\�)�PzWd�Ǐ\��l\�\�2b1;A|�\��D)�;��p\�מ\\$��\�R\�\�\Z�IGƈ�\��p�n��\n: ���\��U�g\�*�q�_)���*~5��\�%OH����\n,�� ��d\�q�_�\��⥧H�:�n �,\�̲8Yeif��\�Օƕ \�|��C�\�Lo��_��\�%+sH\�M&�43��N��e\�Ф\"4���@\���Z�\�\��\�\�u�g\����\�\�\�b\�A\�⢘8\�%h,�[M\�`\�S�N��%\�\�3qe{�̊�E�5\�z+�\�ɝ41\�3\�r\�;YJ!\�B)!#\�\�KF	^W�y3�e���Rϩ���C&%ո\����=Dψ��st/REE\�\��\����x\�(@*\�q}U<�����\�+\�_�\�F\�+\�Kw̞Z\�\�b�ټ���m\�m��\�;�\�\��cq�\ZjT\�~�l|�.���\��\���^f\�*k\'c\�\�L%V*\�\�\�KϏq=\�maK��G/{0ׁ�K�^úd��v\�b\�\��ٞl�  \� ��ʺ�\�\�5������R\�5\���\�Ϟ\\\����\�~�[�1\�V3t\�b��sq\�$\nI\�l�[��Y1���H+p\�듊D��0\�ӊ\�7�ĵa]vw\�7=��+~��{�@Py|>ی�@�y\�l\�\�HQ\�	7r\��2�7��||NmO�g]��#BeN��j<>JZ�\�\�\�R�\�q�%���07\"�?aV+.��<vY\�!�}ָ�H\ZX%�;�e�II!B�~\�=%V4p\�\�h9P[�ZC�\�[�\0ڰ�P:[6��a%�~�q�\�\�T�b��\�\�\��<�\n�53\�k�Z\�\"ɐ���:΄N%�K\�V<Vʊ�\\V\�\'\�֛��I�\n��辚�e{��߰\Z?�.6\�\�T\�D\�U{��*�<�����M1�&��r�\�\�XO\�՟,\�&P\�Jh>���\��f�<#�X�n�x\�\"gAC`;�}��$f+}_D\�\�\�L>R��6��Z}�ZMX\�j	�\�\�\�C��;�\n}��`3Q�#\�%�\�(Wh&DT��E��xi�pG)\�5-N\�-WP �/�u�\�>���i떅V��\�`���jk\�̞ZJ�[~\�Ǫ\0�n+\�E��iY=\'V\�t�|\�����\�@:!.�\\v!!X��<\�EU�L)\�ߞJ�\�/jϯ�\rKI�g�Q�Hg{\�}��u*ߧ�3�/\�t_\�v|��g�\�Ƌqd�,���S/a\�V�|���:��$�\���˂ǃ8�\�U\�A诛>!\�d�\�,\�T�L��:�:Pn![;j^ht��\�ѐt3\Z��\�\��\�c5\\\�s�J�7\�_\��\�y\�X��a�N��X:R\�\\\�xuŷ\�p�\���VX9��i⊜��u\�\�u��\�j!OB\'�:�A�P����z,; \�\Z�\�W.9\�uA�{3�����e�o\�	\�HEPbrv:RD \�6�Ci��H+e(\�f�x\�h\�x��;0\Z�,�t�\�\�L�fD:��\�\�\�\\XB�q\�\�\0�\��o�Fҩ�����Ԃ\"х�\�\�\"\�\\���|�\�DRr\0h����ĺ��sR\��W˙�D\n\��>�.��F\�͊䔥�;�\�%��.�4\�l�\�h\0͏b5����s�J�\�vT\\��#��\�\�	��\�\�\�\'��A|\�\�(��\��\rz\0��LX���)\�6��ZX0�/�H�z�ù\�KQ�l�ՑX\\$�\��\�R?z�\�s�Ժ�\Z�G\�\�\�E(�/s\�\�u\�\�L!���\\u�����n\�}�\�.s��h������:n\�y\\\�	\'l�\�TN\�	���\'\���\�[�\�x�\�`\�ťTKL�Pr�\�!Q\�3KGja��^�?��\Z\�^� �Rf��\�a�HJ�紞J}ֱ\�P�@KY�(�,�\�\�8��.��G\�W�x\�(\��\�k\�qM:�RA�뒅�\���K��+\�yJ�_�W\����\�eI�\�B*�\�Wƨ>��ء	\\��\�Qu�\�\�\�?=���\����X�>\�\�K�eb䋈6�\�J����*4~�h\��%7�\�.��\�3\�\n\��U\�|��E˃ʓ�X\�\�Ǖ\'0\�3C�~�\���\�D�B�we\��p\�8Y\�jYJ\�h\'/LeeÊGj:��X�w�NC��)r\�S�\�$�}{Z\�R#�+��I�\�+1���o�°@�%\�;�l��EC�>,�aqF�c�\�5�޴\�\��Z,\��SK4l��g9�kSo�3�aU�:��n���\'i�;\�ƫ\��\�ͼ:%�e�\�\�#��\�\�2���\��p#7\0�{y�\�!\�\�\�\�2gOr��c���\Z�G\�X�V\"i\�\�\�,NV����̳�~Ռ�$Ⱦ��JݙD��w\�Wǃ\�\'�Sa}\�U\�\�\�*B\�9닟�\�YX]�\"X��D\�L�\�w7UMu�\�\�e���g��\n�S/���>D\��[��\�n\�\Z\�W�\�W\�\�x.�=,VPo�k0q�\���X�4\�^���V\�\�\�8�\�\�\�I�\�\�D�\"v��\�\�5j\'\Zb\�7����*��\�,=1��\�M$\�~�\�!�\�\'\��\�WC\�x�4�g)\�ۻi1\�ǩ\�\�wl*\'\�ga|����Nsck�I\�Ii�(N\�RO�\�O��#�ߛ;\�\�.���\�M\�\ncd\�\�\�2T�e�\��Y�y��\�\�[l�ru�rk�S��&�zc��t\�\�?���\�\�]6\�5\�*�c���<�a����\��Lt}ץ���\�Nk�Ǟ^`��Y\�\'��jR��wk�k��w7\�S�5؏\�8\�:�b\�%�\�l�k�#\�<(\�^D�\�y���\�\�_\\�	\�}y>V	��O*�c$\�(\Z�\��7�����\0W�7jo�a�\�V\�\�\�\�l]\�@7k//��ܳ@\�\�\�e2\�9��\�\�-C,��g~R\�\�w]槫��`��U�.�s~\�F:F#_H�\�w\�N\��\0\�Yu�K$\�D<ů�D�\��8S=�$�E.s�u\�yp\�\n%�\�uz��)��\"\Z\�qT��\�\� \�\"�>z�\�\����0�_zl�\�g�TҐ70m�\�\�}���)WW���@t��&\�wm\����=C\�\�\�C\�S\�£\rH��\�]��%+���\�T�\�-\�o�\�iь��PW�\�+<}ׅ�n�l$\�H�RNC��iwz��W0\\\�u)i���Ӡ\\(�p�%�N̓\�\����Y��\�6l�)�\��SK<{�\��mʷH���u!$�\�c�\�DEty\��)�S�C��(�B�\"b�[�n��\�#�68�}�\�,\�\n\�h\�lryHc�7\�L|�r!�\�w]\r���Z-\�\�w��}e9#��n.+x�,I�么|�/+\�߶<�/���\'\�^��\�\n,���^� \�͡v��﫵XՇk����\����\�=Cgm�	��6R�\�1\��@!\�4\���EH��e�p\�5���� R����_ĺ( բ\�O������k/qdY;HZ�`\�ik\�-���`\�\�-\�˨\�S}l�͍@_�w�l�\�^c�\�	D\�FG:s\�4��\"˺A#}7Q�����\\}!��XOI�I\�z\��\�̺�\��4y�Py\�~~A���dY	\�Xȿs\�_�\�z�~\�\r�\r\"��\�o�\�@�J\n\�gY�<QM�[\�e}\�\�=�E�AY*��L=YU�\�5l,�@Q�9@\�\r\�5N!�1J\�?�\�@*P��\�KcX\�u$nNbJ\'$R40�Z �X\�Ŗ\'�,\��H�o\�*�\�O\"b\�Q2������\�3:�\��v�J\�I��>�S\��}�X*%W�0*ؖ.\�mG\��p�\Z!\�M�\�\\�v3\�6\�ût$\�>?}X�%\�uH5�\'}�KǍ\��E\���\�\�}*�0�\00�\00�\00�\00�\0D� (`�WS\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(2,'Producto2',20,53,10,47,'2015-12-31',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0h\0\0\0�\0\0\02�\�\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0�7\�˭\0\0 \0IDATx�\�}�]Gv\��#�Z>\���\�u�λAs�7��z�\�U#cHGk�9�#�1df�5\�j�\�R�\�L\�15\�xw\"�a[�$6Hc= x \na��\�&��-�\ns�\��bv|kͷ�\�T�;\��z�?9\Z\��\�\\�\����s\�|֩*�;�;�;�;�;�;��[�\�Zk����D���Qw\�2\�H\���\�G\�\�.��#���;\'=\�\�\���t-\�\�;��>\�Y��}��}|��\�t��\����վ\�k�?\�<���^I�`MDZ�\�\�C<�����<د뼰\�\��t\���cÖc�\�.g\�/�2�Bd��\�S{^}!\�{\�A\�w�E6F:[\\:\�0�\n\�E6�X\�\�(QG�n���R(D\�Q�\n�#���i �\�(\�\Z`\"\nP\0hQ���\nb\�:R�\�r\�\�\�If�\\����G��B\�y��\�v\�E�?1�8n����H�,G:$���)\�U\�0W@9�\���-\'D��6#\�*F��\����\�\�wb�\�K��:1��D�\�1�@z)\ri\�n��-\"�WD��a:$e݁\�ɴE�6\�{���\�U�EՒ����\�\�\�L���\�J�~��}\�U�K<�D�R�\�\�\r�Mp�kp7\�<��\�-f�8\�B\�鵔d&F�U\�D\�0�2%��Ǆ\n�]	L	\�z\nQhAԉ\�]N\�#lQ\'��\�lh��\�\�y@\�\�G���\nZ��\�6[#���Oϗ\�R!|Tv�#�\�\Z\�U���\�*�M\���x\r��\�@�j����E\Z	!�+	\\\�+\�\�-b��\r\�0���b@�	�\�V�1n\�rذ#X�w&d\�<t�	�L�\�\nZ����\"\�,|��S$�$3Ih\�Ё/��I�ee�+��@\�(�I@J\�=bc���\�ٵ�hڮ��3˻�!^U_>tD�\�?U_ pZ��o�)F��\�]\�]4�0�O��\�$��D(|I�N\�C#\� \�\�ALǁ{�6DjqS\�CPŢ\�\�ޘ\"\�v��ReL4U\�@�A#FHfb촅m�VRH/\rj�S5.n!��X6,\�t�\���\"nхi�&p�\�b��\�F\0\�i[s���S\�T�A}��-\�M<�\"�#-�B\�b�v$\�\'��;�1\�r򑒩\�|����\n�����J�\�\�\�z�}�:q˖\�9p~N�\�\�/�}T#�BH\�^TU\�*�!l˔�\�\�QV^5�20�\�w|Sw��V[L0�*ô\�\�*��0TW�U���ĒL<� +���\rI�g�F�^6\�@̽\�:̖\�\�r�%���Uݕ��EHJ\�\�\�.8��`\��S�\�/�\�]IIo�\�%\�j�*_\r�n���j$WƆRq\�\"���d�o�\�\�\�[�_\�Y\��\�\�*�[!˲��R��\���@\��J��u\�e�U}��p^k\"�\��,#lG�\�ޣ}��P8\��zƩ���-\���z{�A�8źRz�\��	�j��	�[����5G��\n���$ƶ�/\�\�Q���\�R��#ܡt;�\�Z\�EK۲4\� �9\�~\\\�(JD\�O�!�\�HKD�ʯ��\�\�[\�\�H˺�\�\�)	3\nzgx+\�\�i]�H=\�YK\�\�\�%�FE��D���W��V��52֐\�\�Q\�*+��@\�]\�\���Ǖ\�P\�\�+��\�M[\\Vm�q�ȭJ-	�4m��\�\�\�J\�h��i�w�˧c\�\�\�҄�햸��F����9�RR�h\��]h^�\�,\�\�)\�{D���O��3�J�+���\�0�j\\��\Z!cV\�8\�\����^pc\�k�VY��\�P!&pNUV[1�t��k\��j\��(œ\��. ��I�\Z\"B4��I\�\0�\�wD6i*\�`�eׇ\�\�\�S���jӜ~\�W�~�\��&ւ�A \�\��fb\n�言�.P�$�@4U\rVV[��lx\�dܡ[\"@\r\�> 9ttU��!��d\�\�\�+\�\"$\"cs�8H˩4\�w\�)MU@��Q�̲�X�\�B�\�*BR�n\�T)\�?R$�Z���(|\�\�䣜l�\�n�\0@Q�\�ToB+�<,\'b��\�\�tKd㲑Z*� V\nW�w\�lT��\�\�-Y\\w�\�Y��\���\Zdjˏ\�~ͷU(\�\nI\�2dS)����g�1׃Y^!U�\�\�F�$��!!U\�3��R�Dn�\�Ϣ\"JU�	8@�ؽz�2\�\�U�.S%Ζ�����#\�͌\�\��CzO\�\�+z\rNh\'\n���|�l�/ca�h|\�\�\�	F���!\\�UZb�\�o�	�T�PԼ\�w\�x,��?\"��\�}_��ڨ���+��rb+��R��a\�\�ne\�\�+몍�J_A\n\rD*c~�bN�\�͸���8c�\Z1A\�vwtaх\�X��\�\�!�2��Q\�\�	\�jĩ��~\�M%j(#Q$M��\�}A�x\�XD\0@�\Z��Be*T#�m�J�\�Vy��i9ƕ��\�\�B~-�J��k�p;\�\�]\��$��!�b�\�~`\��l7��jj[$�&VhA\".-�2�@\"TR���_9oȸ�[\�ɢ�\��6��� Z�\��h�\�\��\�A\�86�m��F\�\��t��	�\�w+���]�z\�ڇ*FE�f���|X\��m*(�U��N\n�B��\0�DՈ�\'\��og�V����Z�\�ߏ\�C���w-*\�ۂ�\�y��0�0\��mx^�����\�o�\Z\�\nl5\�V���0��\�>�@�lc�0�\�*S�2@�\�\��\�\nƘІҰ�ex�@�WJ`d\�c�\��\�{eo\�2jX�l��PQ\�l��b�%��aA�����c4���0\�e\�V��U�s\�Dx\�\�_\�\�\��Lm�lY\nu\�]�l��/\�מ�؄݋F��RdD\"tw&M\�TQGP�����C�PK\�_}\�:g��8�r�\�9#X	~S�)\ZFf�j.(Ed��y�~O\'�VX�mKWU�s\�h4}YTQ-(Tq�hшЪ܉�C\\3�1_lt��\\4�J\n̷\�2��Jo�[\�\0��-s�\"\�û�Vw\�x�i9�\�-MD\�1`;��\��\�\�ic ��u�I#\�\�X|��p%�K\�H\�Y5T#P\�\�s��W�s�\�\�\�b�\�q\� �6N�]nm4��DA�u:^Oɀ.\������g��Ω\�1[\r\�V���5�+\n���1����&��Z\�\�\n�{�We�c\��\�},y��\��\"&��0X�|\�\��<fɃ�\nu,�\r[�\��K>\�_j\���=��V\�,/� �\�i ν�Oճ{T���Uw9���\�\�_\���C\�9�\�Z\�W)��)\�x\00S3�_�\�D�g�E��xt	\�\��d\��g\��b��~��}EN\�\�\�.�*=�\�\�q��:?f�P�\nE\�W�\�H<^�\�ޮ�fi\�\��\Z\�WN�\�ٌ+k�R\�w-�]��\�ׅI���ֽ\��mHa�:�h�ؖX�\�V@5�\�[b�T�X\�\�|e��%W���\�J={༜��\0I\'nf3kg�Z�A\�߮�	X^8\�\�r\�!!\�����\�A#\��`���j���\�\Z��MDԑ��KGƑ\��\�*�[b�\�:���\r-��g\���T�\�c�a\�R06�\�\�*d#e0rv[\�\��	pj����\�\�4a�\�PS�-\'���\�.*\�x<<<\�\�gc\�K\��\�L�e/#u(?�pVk\�����+\�A퉘V����h�\�\"T4\�zgҐi\��\Z\\I\rZR\�H�\�\���\�\��_l�jLUp\�G~�W�0c`$��-��(�u�\�\���_\n�3�l���\�\�M�\�O\�\�\�\��3�3\�\��R_�o��\'\�\n;\�\�<U�\�m��y�E�a��\n\�[�\�L�֩\�\�\�Z�n\�\��e\�zjk\�[�\�\�VV8\�\�\\�Y�5\�%]�d#\�{ϣӖ_�\�\�}��\�:y\�\�\��[b#�tU=�R]�ĔTq+3�>^\n%\��\�,\��Y\�^\�ؕS�O&��km]\�E������O�\�޿N\\\����`�V��������\Z�h��h�\'蜶Yݪ{Lg�(\\a�/8�qg�ZW%4\�um.��Y)2\�\�*ݱ\�4�\�/�\n?�簧��\�[G<37m\�\��K(��d\�\�u|\�p����9�\�\�\�ȗU��U�q�u���\�r\�E��+�o]U�zV�7�l-X7��\�twY:b%\�\�\������\�\�D��a���\n�`\�otѩߛ�DAcx\�`\�\�+�/\��\�[\'���҂WM��B\�\�\n�[\�Wk��^��P3p�\�ɡc�|�\\\�D\n��p\�᪴X����7�?��\�|Jϑf\�Қ0^���-��Ue����c���g��v\�\�~�/�\�K�l\�1+c��W��t�E0\�\�X]���\0%\�\�\�`\\\�)+\�W%\���!��j$T\������\�Oo�~\�T�\�(\�T�4*�P��!&���Τ.\�\�\�{E��\��\�\��\�|�\�F,�u��?0S������\�Á0\�\'>�\�_\rA\�8\�sK\��\�\�\Z\�\�%�T�}\�!\���	�\�F\�{0����qj�f��\�\��%H��\�K\���\�\�\�ݯ�V\�\�󧦻˽�x\�\�X���W\�\�bD(N���\�\�sUΘ�_ً{##y;CՁX\Z\���	�]�<fÌ\�M\�\�ie�\���5r��n�!����kg\�|\�aR�N�\�\��Z�LU�x�RNoZH$\�\�C參\�b]H~\�\��\��\�\�5&�b\�*�*:�\0\�C`#\�\�2tc�\n�|�8���\����K��!\��\�\�J��\��\��\�\�E~\�E�>��x�C�\�	\�d��~k\�3�\�9��,\��]�\�K#�\��l���S5Q\�r�7�*d�\�5	K4ƀ�\�\�M��-�\�\'���\�Ɵ;��)��:q`�s\�Ν\'uK\ZM\���N�\�w\�1�\�\�|Q\'\n<�A�\�\�v�&f�O/�\�eL9�u�\�	����\�\�=�	�\�Q�\\@9Fȱ�D\�heR\��\��~_X�6�o�!!���mp�V�0V\��\�V7`�\�NMw��&\"\�r�[�(���Gi�\��@�\�\�s�$�\�S=��$\�eM�y���\�!O\�\�\�Ŝ\�ñwl鿽Z��l���k1w?D��|kv�eT9\0S�\�\�k\�ͦ#}�\�6�R3�}A��\�Z���T\�Y\�HWL׆����\n�!�N�\�i�lǲ!X�\�L��6\�ԻGfb�O�\�\�\�\0�\\u�y\�8MțsZ�|mVN)7��\�TCi$���� u9\�bpNU����$�Rem\�b0*�.\���u��� �<\�fY̕�:y-�E����gR>�\�\��µ�%\\x�W?���̫�yu\�^�Gq>*o!�vD\'#цIGw��+C�\�V��jA�ջR�!vR]���\������\�WH�tŖk��ʅX%�\�rkBfM�/B�a�\�\�K]ԛ\��D\�Ѥ��͎�k�N���*Q\�\�\�qL&r\�b\�J��X:k<�2�A׹n>̜V��8�nv��\�E\��OϞ���ONc\�\�L�\�Z\��/�ڟ\�Ǎ-M\�p{��k%��]=\�k)� r\���\n\"2�.\�\��f)ZՃ�0��9��a�\�?>02\r�j1\�\�)�\�\�;�G�\�Z�lH�;�\\\��xH�\��r���\�n��5=�`�Yqr�s�ݼܱXf_��ʬRӈ�M����Ң\�a\��i\�;B\��#Ǜ\�\�q1+�\�h�*W\�_��fZ#\�!T�\�㥑[�6#B(�\�iT\�3&^\�a�SHoV�\�Z\�b��\�L��\�]#*s����aaؙ\�C\�Mp\�Z\�\n|�\�\�\�0\�h\��\�hX\�A9\�\��\�\��\�(\�fN�\�5U&�!�h��\�zz�!\�؛���y�\��^6$�5\�\�oz\�F�����W_ݨ\0^�\�_�_z��\�	�KB�YM\Z\�qڰ\���\�~r�\�/�[�i�r�(8t�|�,\�:\�e�#��=%�\�ޱ�\�ogV\�{!R\�d\'�\�z���{�n�\��xL��t�16���\"\�\�\�����v:R.���ʂ�;�d�\�3^\�-t�0,�H�#b99r\�\�\�j\�n5á�}P�\0�w^\�\�\�[\�\�\��\Z֢,�\\z�\�^\"��\�\�2\�U�e[�u=�\�Ң;el��89�\'lBo\�A|8��;�8\�(�r\�u�D\�r\Z쿹v$a\�\\\�V�)�i�RΫ�#s�XN��Bz;{c\�dYFoG�\�\�t��^aÝ=�1h�Q�\�ۃq\"x�\�\�7D\r�%2l�2�����{\�nқ�s\�s?{�\�\'\�\�9������\�{\r^y\��8\�2\��Uy����,,����[mב\�\�\n?��f��¦\��\���\�]�\�\�;�\�f�˯\�\��1\�2\�%\�\�rh=��c�����G\�+\�;1\�]ư��t(\�\�\�S˓p\�\�eh�G��5\�[ư|�\�\�\�T\��\��\�\�\�\�\�2F��F��\"\�Y~��__�\�\�+W�Y>j\�2\"ˈ,kgo���׼�\��rQ\�\�\�b�\��\�˗.���,?/���tw�L���\�L�\�\���\"\��~m\�^��#\�\�J�\�.ŝ�)p*\�zŕ\�m�\'\�\"\�_>΅\�x�WJ}\�~�\Z\�\�\��)\'G.Xd(\�\��2 \�}�,�N�M[\�,pm�\�={\�\�\����-QD��\�>d\��\�:��<Ͻ{�C��\�/3q{b\�\�\nBaG�k\�\�6�$\�-T\�X\�3ܛ�-di�$΋���~\��� Nz#�/�\�̪^]�\�ɑ\�L���N��\�Y�`�[tc\�OB�\�W\�p\�pΑt@�];�\�����f�\�\�.���}m\�=��2Ɇ\�0#f:�4$���\�ܿjzDi�\Z\��\�:�L�-jke30nnBP\�\��\�s��\�B\�\�gξ٪>\��d�7@~���	EQEa\��Ƀ�g/��	N��\��wwf\\\�Dq4\�E^��7z0�\�HUeww�\�zJw�[�m�y�����\�[�Ecm8���V�K���Iݳ!)+�c��\�\�B��>s\0��%\�«�K\�=\�t{\�q.\�ng�Zs�:\�\�\�$\�Zp�X^�x{H�-�3�\�N\��\�\�Y>�<\�\�\�\�\�ۏs�ޯ\�/�<�\��\�*�\�\�6\�?�\�&v�g%���	TFg+BU��׃\��[-ɤ\r��\��CRB\�\�\�\��6��\�]������\�+/8\�}\�,<��o^\�\�\�8I�z�*�҂��\�Uv=\�\�a6DU\Zu�q���MG�\'s\�j\�(�Y\Z	�j�8k�1���\�*�hw���Ԛ�f��W\�q�\�\�\�?z��9�\�\�\�\�X.�ڨ�\�\�%�\ZB��֒\�ɸp�2\n�\�]�Ԥ\�\�mJ\�i\��*�~F@�\�.\�\�o\'6^\�xeq�~(�o1{\�\�g�\�+��.�\�y��\�\��򀗆�1\"\��O��7�	Q�\�o���0Dz3Ả�3�bc�\��MpPQ��Ղ�kN\r���\��+�?s�~�-f�|D�4��d��u~\\0\�\�\'��y:���ط��/\�~�\"\�7\�r.�\��&(��0\���\�\�/\'\�1\�f\��\��������\���	$�ݝ\�\�	�\r����^W�!{\�;���+(k.\�\�s2.\�u�\�\�w:�;\�e\�+�g�\0�ќ7�\�G\�7N1��#~?�\�M-kz���B>_J�WF�\��\�d�W�MS\�d|=ؐ@2mk�pEa�l�\\,T��/�k\��\�Qp\�挄\�e�\�G\��\�c\�=\�\�b\��lq݅�\�\�;�f \�r�\��=f���>�q�\�\�͌7�\�sOΑ<��叚>�vN\�};\r�,\n�\�ǧ]N�\�΍\Z\�\�\����\�\�CogU�\�t��U\"˓�\����3�\n_?\�\�g��\�\�\�_}�׿�*q��u\"^+�p8\�\���\�(\�$l䡝�\�e*b����F\�\�9�gP|u6抢\�*�\�\�(5A<u`��\�(��\�L�O\�^\�\�\�G��rK�\�r���Jq6eŵ�%,�	�q\�):R�~j�O�?\�a��\Z�\�;]�|\�HX�\�\�u�0�/\'�=$ّ�\�t��t[	�B\�\�b\n(񎄧�y�\�\�b\�XT(����1P\�կ��\��\�p\�pqHǼ9���\�3�O�xOUC�V�O�?ɋ68�/�*qF6��M<n\�\�fO7�7��b�\�Ɯ1��}\�,G>\�؋\�KN�㰇\�^\r\�g���\�\��\�\��\�v��\\\�&|��pP,O�>��o�_�\��ƀx�yn	\�&t8\���Cl\�\�MС��\0{\��c\�\�a\� w9���\�\rC�\�\�b�\Z\�\�|�\�~�$m.\��\�ls�\�\�\�q�v�\�fՍsv�\��\\�x����#CyE,\�a\�TDl��\�L�=\�$�!40k�cFHG�8W\�yx�\�\��q\��\��\\�\�����\�)�a6vlB�V���B/\�]\�ILLI�9\�\�\�(�����\�6\�\�a\ng�	m�u;��D�\n\�]S櫥�	\��	I4�\�\��ŵ��7$Љ\'\�\�w�\\}�J�\�M\�	1�\�+\�\�Izk�W�Y\�Q׳��y�i�P��Jx�\�\�w�O�H/\�\�=�(�M\�`G8�Oz�\0w�k�e\�\�t\�w\��ԫ��9��I�</B\��ώ�}�$Rf96O�����%�R\�E$!�!#�\��EHR4\�j\�:�^Bl¦\���$�--w�����\�iC\�\'0a�פcG\�:j�H:l��_\�\r7��\"m�\�\�2&�\�\�eN\�\�ƭ}2u\�\�S�=�\�3Bd��_@G\�\�_;S�\\�\�\\��`\�n^�����\r\�z͎\�s\�J�ֈ[�T�t@}D\�#\�\�P��Qz8k\�߃+�\�\n\'�cmΙ�o�\�Ӗ�d:F\�g0���\��z�\�%�`;�}c�S�;\�Y%�1!\�*V�`�����p%]�\��\�\0\0 \0IDATa\�DTc}\�{C+.NZnڊ\�>�	Ȩ1zF`��Ω\��t\�\�*к\�!�T\�\�\�\�F\�\�\��\Zq\�\�\�\�J\�l:V?���\�<�0@/-\�\�87��^�7i	�;�]\�4T6Q\�}������\�kE.����S2��Z�\\�R�� \�g\��0\�\�,��v�u,G���н_\�r\�oMxP%������\r	�o��\�\��\�o稏�Y�al\�\�4�\�@��7r�c9\�Y\��\�!\�\�\�\�\�#\�Ͽ\0�.��{=�\�7e��\�Ȱ\�J�Sb\�_�\�fysi�\�:zd��J\�Hu\����K \���~4\��X�\�&\�\�F ����W\\شh����\�VH?ۣ{�\�<\0o��.8\�\�ʑ�S�\�\"�\�g�k\Z\��fEچ3b\�oU8+�D�\�$\��7\�\�)[\n\r��\�\�V\�}B�4\'`\�h\�?\�\���)/�R�.w�\�~�Ϝ�~�\�p\�\�X�h\�)	����H�/a�ˆ�K;�x�C4�?	��~)�s�\�B��c~&��\rGJoGx����U\�_M	{$,\�\��\�;\�SO{W�Ҕԛ�\�\��q��w5d;�d\��<\�\�\�\�h�:�s�9x��>8�^t����\�?H\�B�b�HօVę�\��\�n��\�\�9m��p�8�G�[\�H�s?�tμ���s85L9��<^yq\�2t\�~�9z�;X\�\�q��\�S\��в\�5\�\r\�6�7\���$\n�\�q1W%�\�\�V\�eЙ��\�\�\�J�\�Wf���\�̋@\np\0�\���ڀC.�\�\n^\�Ic�e��\�T�$��������}\�/s�\�\��W��1^����\�^\��2�t\�:��\�\0�p�\�g�O\�ė_�E\Z	G\�T���\�^�x=�lz\�;��\�Ճ�\�#\�{�`�\�F�\�^x�\�\0�<F\��g/z�\�\��~\�q\�\'\�FXΊ!�	���\�\�2j\�8@v\'#/�\�\�_8A�\�\�\�?9\��y\�����@o�H�`\rT�Ckc��\�l�[�\�\�.[\"z;-��\�K�(3IB\�n\�\"����},+\�j�F�\�Ny\rۙs\�[�{\0�=3�\�o\�f\��r^�6\�رJ�\�i�+�!���f�<�\��\n�d&a~�2km͝\�U�u{̻�X!�Q�>܇m��ZG=��\�b�ϯ������#�x|^~\�G�l=(\�A*]5�{k�}�yGg/���q\�9\�@�8/�e7��!N\�	\�R��-�})ث�� �9p�\�CLX\�9 \�Xz\�Ix\�\�r\�j�\�Tr�\�<\�C�#�|\�E\�5BFl>�뻁u��*��\�l������ێW�c\�\��OTđ`l\\�\��\�d\�GX�����\n���S��\�a\���\����U�\� \�p\��ׯ2���\�?|���.\\e��Y0\��\�\�T\�*\�`\�\�\�\0%��*�K�\�Ď�9\�\�{	�2�\�~]lXϪʅ\�C�}\�\�|1\�䵔�\�\n\��u�Ą���\�6��k�p�ۣ��F8|7$�T�K��/�\���\����ŗ���0i\��_\�$\�\�N8 ��\�\'\�u�~7itL��ʏn�����U�?������z�hc-BL1�,�,ﲇ�_�ʫ׆�ƎP\�H��}b�������<�]�f���\�?�4�tD�\�ü�SO��D���CX\�\�\�a\�G9�3G�ꕁJX\�>\�\\+u�y�=�^�\��!�>d_֕�	��;P\�׏�W�r�cy�\��\�.T�C%�^K\�wO�\�>M\\x\�<:�]t\��\�,���~\�\�W\�\�񵔓��>X{���-\r�CIāg\�	C�V\\)��	�\�\�ݔw�ְXB0RM;T:\�#]�Y\�*sB�RNf\�����9\�͵\��E�\�w!\�*\�=�\�,��i�Č�\�\�\rwr�\�LD2c\�M\�NP��pt�KA,�\�VV�R\�S�eas�BC]O�Vص�]\nT��D��%װ��+\�\��zǖh|<\�@ض7��|�\�Ȩ�!\�Y��t]N�`\�M2\�\�\�.�\�\��7_�m�\�V\�\�\�5E�&�\��T\�^y\�Gt8�ڮ/$Y6\����\n�1�ך����9�����b9i��\�ʘ\�\�\�\�-MfA�, \�Ά�� �\�υ\���J\�h��4\�\"y6ܢhC3\�\�52٫զ�\��>D\�@>\\\�\��c\�)��!�S�\�\"С\�D%q\�gF\�)\'��Pл�\�\�CU�i��7�\n6����\�\�}�\0\��.Z�����|�S\�e��\�<LGZW�����F\n��>�!�,�ې��Z�z\��͡��\�A�	S�x�Gia7�\�\�Z�/h���� N\�=m��;%\�T)�\�\���\�ƫ�7$\�\�^�x[\�u��֣\�o�&\�\�zKTn\���Ԩ�\nш�-�\�N��*R]\'\�\�)F4*�/w˿+�AC\�\r�\�x}Эlc1�	Yz\�P\�6J�Ö\�wV\�ǭ��\���MD��kSb�m������I\\}\\$��\�\�O�h\��t\�\��J<��\�Z\�i\�6V�}��6\\QN�ę�\�ftـ\�Qh�\�bA6\Zh��=y�\�\Z{�V���`}�F��]\�j�VO�`�.La\�2�\�*\�-\�PGVx��S��\�Z�	\�\��\��\rQ\�n��׍�+�G\��6\�I��\�h���ҁdȣ\�\�n\�A`&�\�\�եw�\�k�m\�l\'N�\�\�r�L\�,6�\�ݶ/v\���\�٥��-�;[n�$#i���\�z��\�ρ\\�w\�a�膳_o)\��7\n�OE(�L\'ᬡH\�n\n�\�\�1\�t(\'ڤ\�;f���E�\�\�AUjk�\�9\�t�O?�\�:\�\�\\�h|�)�gAF@�\�#\�\��\�T�@/�.�?�\�mE#\���\�]�\0]\�r;�\�T�Z\�l#�?�o� LE�j\�Kt|C%Z���\�ˉh\�\�r\�& �J��3��CL\�@\�s �\�#ʆqXz�E:z-��EA`�G��\�\r\�]9��b��؝	z\��å ��L˝\�M��\�~�\�\�\��\�,���F1�4��\�g�F�U������H1\�\�\"���	\'\�z��ȃ�L+\�>�軄Q|	\�Ks �uFú-:\�Ꭰ��~��\�H\�\�b��z�܁�\�#F�������UV����p�wp��g�\n\�ԡ�ʜ.7jN�x|å�q�7|U�6�����3t|uCs�~w�4ݴ�\�\���-�\�R�C�\�-��\�\�5Ao\rk\�TT�\�7_s\���r\ZY\�*��Xx��\��\�\�\�\";#\�e7�\�\�H\�}\�\��DQ��8�Em�lj�%c\�YM\�֯\Z|�j\�\�zpyq\�J^I>��{��\�	�\��\�E\�;\0=�������\�0C\��!8�t�.��\�\'C�z\�G�u�;A\'ا搝����\�\�!\�=d\Z\�g-��2�	ۋ\�f\�\�\�u\�f�\�Hѻe\�J\�&\�*�Se\�h�i\�2�|\�hV\�d\�G�tAzF)\�\�\� E\��\r��ו��\� w!\�rp\��\"\�\�iB^�d�\�\�t�7�\��\'1�o\�$A�\'\�\�C�iNX1��\�\�r��\�~M��\�:�\�\���-\��mV\�:���+�S�\�\�W�\�@ue��\�	��q���S�L��5��2�\�\"pSa\Z�a�\�\'m:\�p.\�]�:�7Afn*�3=t�\�\r���2�� ��@�^Q\�~�ơ�^��Eo(�+Fo��\�\��|�0b�\�I3%\�Ě*$OX�O�Pr�@G���\�}�\��\�t�\�\r(\�I\�ߍ\�iI\�kN\�QV:�cc\�a7�N �\�\�%\��C\�}:�\�!O@\�\�*�K��%_,O���\�]�\�\0F]\�~s��}12;�e�X�D�Fˣ@\�\�(Af-:X�+\�ܗҚ{*\�zߣ\�ޙ8p\\\�+\n��\�\�B H<|d\��KC.9�W��Mc�i��@��_X=��W\n;�Vc�@\�s1��{\�\�!I\n͢o,�<\nҷȾ9\�p\�Hc\�+a\�`\�C\��(LC\�R\"\�ʐ�&D3��1�\�\";2\��\�Fӝ	�\n\�i��@��\�\��*t\n\��z����k\�\�?\Z�\�@�E�\�\�\�\�\�\�S��9\�== w�i����9G�M[�����\�/j�Ъ��\�?�\�T��!J��X[�q_W��\���<?����\"�g!�\�	�\��	R��v\Z|��#\�@\�-\�\\�G�����ͫ$\�}�n\�@�<,��D>��M\���!D�w!���#y�K\�{\�J\�w�k�{\��#F�\\\�h:\�J��P\'�\�]��g\�\�\�\�8N�\n\�	�-�4V%D��U��_�\�CYc\�\nJߨ�\�.:l�\�yЂ��$G\�B~M�\�3=\�7R\�B�X���<&\�8\�r�bK\�\�\r��}A�\ZD#`wR�O+\�\�\�sd\����m\����3�;Rd��\�7\�\r9v\n\��\�\�\�&ȧ,\����l\�v�E3����\��\\%+QЍ>l�\�4D7�aoe5ÆG��t��+\�Y4��Z�T\�ح�\"j�Ϋ@�\�\����l\�\���m\�?�\��\r\�2\�汘\��b�,{F\�؟\�\�o�\�\"��o\�<� \����\�3��E\�u0��:�=���}#�/<z	\�,�WSL-y�\����\�c�\�3�w7�d^���\�\�\�\��l\�\n��=��\��R�{\�3\�\�`\���\���FL9����$#L\�\��\�!�\�\�/\��/P<\�(��İ\�F�\0\����}X\�{\�zlY�t0l{`\n�N�\�8\�$(+\�2�ᢶ�+h�\�3_p\����*� 蟤\����颷C$ؽ�a�C]��M\�KVaچ�un;׋ �\\��\�A|� ���\�1\�\�S.\�q�LS�;*�(FN\�;!|4�\�\�\�SF�B\�.ze�:ȝ\�{�\�R\��\�p���A\\�:Bd\�\Z �4���RI��Ep\�+��6<�|s�\�*MeW\�\�E\�^�=\�\�t\�5�\��\�,�9�NxG��glS��w:\��\�BHd,Ѐ��:�L�#�\�E\�\�Z>\��酾E\�8Ts7r\�V:\0Z\��\�U��\�s7@��a� ����\�;+��a�t�e�lQ\�ȷ`� q\"dy1\�GE%\���\�D�\��@��-BL@\�0Ks�|�\�\�\�ٷ2�>\�\�}#l4��\�\��\�w@u�\0]\�>@#\�O\�bՑ�~+��h�Aط\'y8Fo\�ı�0\�\�&\�	\�nf��\"�\�\0\�/]�\�%w�}E��\���\0\��\�\�|�\�Rd�\�\�\�_Kk\�\�V�\�\�	}�f\�\�Iܵ���\�p�h\�\��$l��d��\�v�ߞ�b\�\�ݐ\�k{�ɳOI\�.B�m(��^\"{�`R\�B\�0˱Iy��@�\�G\�ylI\�ȃ?\�\�\��m\�ݸ\�\�7�pb\"D\"\�\�\�\�OX$X��<�2N8t��.<\'L_Ⱦ��,b,�,/�fE��`c	\�1!&\�\�V\�	\'�<�L`\�ص\n�{c�G&VJK�\�֎(�\�\����I�΀^\n�\�\�ŌC{z�;9\�٘\�o_$_,Ho)�c�C\�oɺ��\0�<\�#�\�	����.\�\�M䊪 \�1���tA\�JQ#\�G\�nq�/�\�EG~�O\�´C/	\\�\0CG�n�\��\�&\�\�	ĉ;Q�h\�C��j;�\\Z\�1Z\�|��6L�?3\�]y聡N��U?|\�i\��p\�C{\�6|�O�+ qXwC�O�Ψ�d�w\�\�}�׆D[\��2�;PW��\�C\�-��\�uq/�_�sWRl_\��{,��#�#d\�)\�S=\�=\�\�͓}\0\�Cāy�\�=�!\"a,\'7%sZO\�\��\�\�\�_F=�\�S\���\�!�nɑŵ\�n\�8��_m$\�\��\��\�r�?U�U�\�6�}c��gz\�\���pۑ��蝔\�\�\�#pc\�Qv\���\\hӴEl)2\�8$ދ�@-\�(\��\���^\'Bvb{\�:@\�\���\"\�ӀW�\�E/)������\�\�C\�\�\�t\�\0�;�\�Vn�ߚ��R�B\�ڷ�\�3nd&ll\���\�Ն�d�zY�\��n�B�01\�%�:��?֣�T�a˲x�K�0H\'��H�*���~��s�\���s����p}\�\�\�J,at\�}}X \�J�\�\�h>lJ\�\�`@x�X@\�w���,�S\�\�\�6*�\�\�hwtW)r\�#\�et\Z�����\�\�X\�Jؐ@���\�x>2c\�R)\�h\�l+u�O��}?%��\���Z�dH�}���x��\�\�*AЛ\�f\�2t\�\"\�E8�0$W\�GJ�+\�8Af\�\�]�G\�\�ݰs��uq\�\�λ�*k\�`�Oq_So\�\\�@�\�\�\�\�$\'�xh/-�M埜/R�\r�7lI���e\�b�\�:~dy�K\�3�T�l	\�O��>\�V�_���PG#\0.�;b\�&l\�3���>i�b\�?U�\�|\���x\�=\���z;�Ẽ��0��g\�(\���.�R\�֟+^`\��\��\�ib�c<�P�\�ff\�荔;\�\�\�bA\�\��\�E�=�.Adz�6\�np�\��_\�\�0e\Zα[Cg�]0�͔�RQ��b]2(�!\�dQG,z��\�׌$l\�Ai���t�\r\�\�+\�\�_D�u+�\�C~\�X\������CMS\��)E��z�\��0�����\�/\�QH9�u���C��k;\�+Mfp�\��Cp7�Jv~H4L\�d\�\�.i� \�K��:^F\�>T�*\�ZqN�k\�2\�\�3%3WԿֆ\r	�\�\�~1��P�\�MK�ž1(a�ļ\�\�\�\�\�w^q\�N\�Rex��]\�	��\��I:)zIз�Xx\�!�\�\�(\�\�\\��y	\�\�K\�\�Nvj!{��Q�\�\�	�`��*\�[CH��N��GZ}k@��\�Gaqa��\"id�\�ф�e������\�_\\��\�\n\�+�*Q\�R-E\�\�U�o�\�$�\�\�X\�vLӜ�RAz� wJ�\�Be����/\�].�\�|&A��`\0E\�&\\~�\�d�lKz1��jA�<j)���\�\�K�{��\���\n�Q�L�ӂ~\0�;>�⪟�S�V��\�ĺ��q��8<,���\�7E Wf�\���j��Zyr\�9^�\�#�\�9҅`I��\0Vхv�\�\�>\��f`-�P�W\�-��urd��\�+�;\�\0DA����#T��\rAC|��Jv>ln[%�\n�Q,\�QA�I�⫺Z8XOp\�2�f�%�G\�yu�Y=!m6\�h[g�O$Z�\�\�\�\�11(\r�&�5a�H����\�7�E\�;��)��2LCzPE\��\�(\�\\C\����x�7R\n�\�_:��)ь\��ٕ�h�\�{8&\�u�6��T�\�3]��\�&Ո�=0*�!\�h�R\�78Xۻ�\�Ӏ^�qz�#kiS\�?y\0�B��R��ǐ���ec\�j#I\�>	á\"�\"b�\�C\�)\��= ��pB$�<\"	\�Ùw�\\xr�¸ǖ\�,po�\�\r��fN�>�\\\�\�\�邦)\��!\�0CZYe\�3���Չĭ�h\��v}-\r32��\�����=Ol@�\Z.-]\�֞�����\�L��:\�\�of\�Cv\n�\��(�\0!��Lf\�I߂�\�\�\�9�\�9�b�\�n�-Gv^\�\�m�ј ��\"\�\�\�|=c�~AZhM�\�bk\���\�?]\�mK���[�1��؅u��\r	t�\��S�<@��<\�#~�ۤ,Uh�03ד�\��������n*\�Ӹ�o+�]\�o)�(z-�\�repM\'ʮ\�,\�\�\��\�wS\\P$�\�Z\�\���c��\�O[�\�@��]~c\"հj -�\�l���0o�^*���\�\�\�w.�\�\�Q\�\�\���\�x�\��:E��W�*S@��匮��<&8����������k?RFZ\��\�\��}�G��و\�_Ma>׿\�o\�`ʁc�\�\��iؾ݄��\�\�p�o\�y \"\�v��)�t��\�\��P\�Խ�\�e���Xu����7ߨ\��\�,y\�?`�@\��G�x��\�@�~z_.�(\�Q�\�{t4\"�7�����u$\�\�\�\0�\�&L���|\��\���gK�f\��\�\�\"�=\��K˶\�6�.�M�{���¿�\�EF6\�G�\�TzΔ\�?\"�#ϣ��8�\�|(<x8!�o�\��z�\�\�Y��p/|\�=C\�^م%��Uf\�J���\�2K�0U�\n�a\�\r���g���_2�%}\�\�{+#\n\�G�?\�ʬn\�Z\�\�\�$\��j�G(�a\��ɭc�ͪ\�HR�Nл�bq,\�\�\�w]Ho+\�\�l&4�a\�սY����5F9��s��\��]�ѐtPPEK�\�(�6ӯ:��:�\�\�Z�ng���ױ��\\�6�n���j&06B\�\�wr��C�X\���\�I�Ӄ%(\�b\��&�;�q\��\�T��\�d`!��dw�6۶z\�\��V��#��2�\�@�/d�b �R��V�ڢe�8\��\�:���\n�C��VW(���\��ݳ\�O\�q�>\�_v�X\���`�\n\�?\�\'�8BGw;{�[\�s���̷\n�\�n��ۻ�9�+���5�\��a\� �\�.X����\�C\�rQ$��Crt��\Z\�H0����\� ؕ/\�Cm �$�u\�9tA\Z�!\��^uUu\�J\�9�3\�?��\��\�O�B1+��5�\�\�\n6\��Ǐ�W�}h��	Ϳ�׮U>\�K���^�iPN\�U����\\�;F�Ԣ}�\�\�_@�j\�=\���~\�\�.\�t�b��-U�>u�c�+\���\�\�o��\�E�\�:ph-�O\�\�c�������7\�ڦ�Y�]D�u�[��f\�\�>\��\�B4\�	\�N\�r���;\����y����\�\0\0\n�IDAT��(�\�}\�\�\'A�b0\�n#��~��iAf�/���\n�w�e}�./� \Z�!4�\�ąTy�#\�&l��߻��\�o׍\�#cLć�����mD5�3B8\0\�˟�����=\�O8�ZH��0�*��R]�e� #�,�u\�@o{�H���.�5�:�$m\�SJ\'�\�&\Z\�\nh��rؕ*0~1\�\�G+�\0N\��\�w?n\�\�\�b݂;�\��\�\�%͞x��\r�\�ݠ�&\�&6���S�\�T\�\�>:L*7�\�\">\���\�T���xz\�O\�B(f@o\�����^\r\�&\0#��P� B\�\�d�/�ʵI4\�I\�_?`EX\�=u\����);��\�Z<�d��\�3{d\"�b�`1V�\�}I\�6\�v=\�W�*�g���8b\�p\�@�}\n�)�8������øp\�J���C&�.�;�V.�4�\�`I`�ۛ�v?\�ʉ\�\��`�H��\\\'�\�ߣ\�>�\�{�Q0a3�\�\n�Y\"�{�&r2\�\�,<Fm~���p��{�X<��b��@�T�\�V��2�e��r�����>�\�\�\����u��>��9n������qb�\�&���\�/9Apy\�<�C�#;��Ça!s F��\�ц�\�Q�E�ť�\�l��\�c+1ZM\�\r�\�p;%\�2tǉ�\��\0?&��\�F\Z1#�qC*\�X[N\0���=>\�s`\"畜 ���z��z\r\�-U&s����\��!�\"5��\�\'�-i���4�^(��\�Q\�;^�\"4ѽ�z�>9\r��\�)ƕ>?���\�;\�I7\��_�Ƞ�����C\�\�	�7�\�\�Lh�8-\��BmZQ��3~\�9������A�F�7>#\���TA?rY��Fh\Z$xTD\'�Ӻ�T�WhM\�\�\�!\�DG�\�\�ye�A,q��z�P�S(��c)C�\�䩗.��\�-�v+��4�y\�0�Z��.��\�>\�$C�\�[W\�Չ�i�#�1a��\�/Će��%b�������Q3\�|�<��{C=q�\�mE�\�66��Y�X�Q\�y�9#�wn*a\"n�\n?�\n�\�g�P@\�9�A3�\�w���\�>ؚ\�Q	�V\'��\�VT\�\�@\�̸2sz\�\��\�.C9/$8�>\� �\�\�^\�b\�I\�\"���`��\�\�r8�G\�yeS�\�d�#Sq$\n{�\�K��\0\0�b��h\�>���ڴ*ɪ;�7\0\0��Ŭfm^�}bS\�\���\�w��.\�8,\n)s 8\��T?i&#n&\�4R�\�PW\�Ttߍ�O	�e���,9�L� E�7nҫ\�\�\�p\�\��\�gh�X(|P[�:���\�\�jX=R�\�\0��\�<n�_\�/]Ɂ�@\�T�9�0�a\�*渆@ha��\�_D��\�\�\�\�3[h\����c�S�\�Y\�%;�<%�����{\�\�\�Est�%3v�~Vw<\�\�\�\�����\�\�)P�;�\�pԏ\Z\�Nyt^\"�O)���\�É:?�t$~)]\�UrN]yɡ�7���ϣ���Ε�;F�\0��Q씠��93�[,\�>�\�r�\�\�\ZMǗ�Ț�>pvpc\�\�\����?,c�\�\�\�.����O�]�\�N\�\�ڏo�}R\��\�\�\�)����Jgb�����4�T)\�bbN�XNY�\��c�1&\�f滹\�ψ\�T\�)!��=�\�\��\0�.Q\�h\�\�:�\�g�|�\�!��\0M}�\�e��U\�AA��o\��?�&T~cR\���\��h`\�02\�Lt(��\n;�L\�OAҗ)9q�ީ���\��Tݹ;\�f\�p2���Ho\0s��\�\��%��A�\n��=ПV\0������o_��Ty(\�\�J�c4u��kQ?^��8G\��Q\�C�vm&�J�]ޙM\�\���Med\n���\�o,Ǧ\�T��ˤ\�\�)u\�{�o,�+\r��&|��\��)���Ϫ7Х[n\�r�\'5V�\�\�w\"�\�,bj�\�X\���\�zG�\�FM9yw�\�bY!��ذ\�G\�ml\'l�Qٴ#n\�\�9�\�\��\�\"T;\Z\�\��,a��O�7�\0\��\�\�\��ߺ�&��\�\���k4�p��\�G��p\�^<\0e\�{�\��\�83�\�U\�\\\�j\�9\�\�N�R�g��h8{\��x\"6X\�T\��e\"\��i$=s��8��Rf�\�lS���+}(\��!\�\"�\Zu\�|j\��\��v\�\�x(`�5vo\\\�\'_\�\��;�g�5�,���7!\�\�!\0\"\�zSyp�\�\�u;FcZ@�y\�muޕ\�1ڮ\�\��^P�aF\�6jcP\�T(\n��\�\r�@�\�B\�\�,A{tD�\�I��pm��X��P��Ҳ�`!�c�\�\�0I&lk\��\�vX�jp�� r\�HΜ�\"4��v��z\�g@�Z�;]�aKk��\�\�\�\�T ��\�\����\��)׵`LkP?iPw���I2�]!�oaYY��\�\��ft1��\�\�\r�!����;\'/\��aE�J\�&V+WW\�S��\0,\��<G\�\�Y�\�^)q\�و�G}k\�@����{��\�/��t\�\�[�g\0��o���d,C�c9�@EB9#,;\Z\'\�:\��\�Hɝ��:\�p m��CmJ\�\�n��\�LAV�AZ�\�Ʊ�\�_�eSL�\\�0�9\�\0Oɲ�xH�9��	\�\�`\���\�ٕ\�\��nu�v\01j\�a+�\�˔���\�X\�\'���U:��\�m�g{�R�\��@@�n��\0cST8\�o\�\�pǽ\�vɦ�\���\ZG��QY��ټW.���\�C��\�\�n���\�k�\�OهRk`VB\�\� ��\�\�\�=P\�h\��@���2��\�	\0\���A�6\�1��r�L!\�)6��E讔�U>�,{\\-[��Ψ��\�\0�\�h,\�ӻWqxt�\�\�\�\�u{�^�{\������\�GK,.V\�\�GK��{\�\�/��~	�U�_Wp�̹)\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(3,'Producto3',30,61.768000000000015,15,38.23199999999999,'2015-12-31',2,0,0,'�\��\�\0JFIF\0\0K\0K\0\0�\�\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342�\�\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\0}\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0	\n�\�\0�\0\0\0}\0!1AQa\"q2���#B��R\��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz�����������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\������������\�\0\0\0\0\0\0\0\0	\n�\�\0�\0\0w\0!1AQaq\"2�B����	#3R�br\�\n$4\�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz������������������������������������\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�\�����������\�\0\0\0?\0\�d`D	��$�\��\�y�\�\��\�{WX4��N�D_\��\�W[\�\�{n\�S� ����S�\�*\�oJWm]>\�.1̣��\0k�b�N=����g\�rA����@\�Ĭ��k\Zm3n8\�jb$�3��\�x��\�70\�\�W�s��]?�\�\�^!:s�}ՍV�9#�\�q\\^�ᩭo\��\0L-����\Z\�\�/C\�r:Հ\�=\�|�*\�a-7\�ߡԱ\n:�+K�k�\�8h�|�F\0�\0�*ȅL��00)��QN��?�[+�q���+�8\�^\�\ZW\\ݙ\�a��\��\�}��\�[I\�Va�iݒy��:\�{�KY��]�\�}�✨�؍D{G$�\�O�0\ZdČ��}��\��\�EJ�r�\�\�oB4eNIZ\��h�\�hÖT��=p}*��c;G!ڒ $\�\�\\��|v\0�\n�\�WJ.�\�\�ə2={�+�x5f\�-\�}\�\�|}<ڥR�uxvZ}̍|D�����\����\Z� �\�w-1e�9\�k\�XH9Y#\��\�Q�:��_\�p~�Ѯ0;� �9�:�\�{�XX\�\�&\�E\�C��\ZH��u�{	�N0\�Q���>_�J�\�u\"�&\�q\�7�YH;�Zzx�ND~^[��*Ar��͆z\r�kMgF��Hq\�`��:*\�\�Rj��Yw\rԫYB�|�_���\�҉�J\��R3\�z\�Y��K\�\�i����\��XG�*1\��R\�ҥN4\�d���eu��-ͺ\�3�#�O�F����\�C��\��\n��z�\\\���x�I\�,L�\�L�=��\��Ԟ\�}�U\�\�\�`�\�Z��\�3\���\�{zO}\�����Ů���\�8�M\"\0\�\��\�i>!ԥ�m�\�$\�\�)c^��h�$~~�U�x�2q�\�{�\�xhŴ|V3%\�\�j�U:&��\�w,�\�!�f\�{�X��j\�\�x\�>\��q�ѐ�S��\\u���\�ꉆ\'��\�\�=Q\�pJ\�²�/ts�s���O�j�\�z�J\�\�S���zzʹ�\����0{��t�\0y��E�m�F\���\�Nj:/�>\�)�ՂX�\�Ij�wn���l\�:Uy��\�9,>\�v�GX�_�wry\����M0�y\r�8�Ԩ���>\�\�}.��\���|��\�\����?�h��s.7\��}zU8%���ʣb�6I \Z\�\�L�SyD6\���ֺqx9/z�\���Ȱ\�әCSV\�Y�8\�kSJ\�n.�]_�\� nq\�\\�\0�t�w�}�����ܜ���d�+m��\�^�I�ӄUz��{/՟��nk�I<G��U~��&�O��\�E@GEPC:Cc�c8ϽT��*]:1\�s\�+�\�u�+#\�b\�Ӟ��\�\'Oj��\�|�_�\���mM=�\��\0?\�\�t3\����4ݜc�k\Z\�|�rH8p=��B\�\�\�g�)>�\��\0^�\0� �r�I$*�\�c�~��7UjJ���\�\��	��S�x,<i\�\�Ij��$H\�\�\�\�ˀ>�\�E$P\�&d�Gr\�w\�Nq�\�\�Ec*���==w:�n�EWRs�\��}*e�\�&#85��\�W\ZV�7FY�\�\0\�9�^f\��\���\�\�������R|�\�\�\�xw�\�qw.Z\�\�\�4�[D#�C��\�\�M7��8ʜ�\�x��W�8�ʆ\�\�K:<\�X\�(;W�\�\��t�J\�F�z\�o\��fu�ak\�eJ�ӽ�\�\���-�y��q\�p^#�D\�\�\�\�na\�_*\�&\�R�	�T\��\�\�\�ʞQ�zs�����uf�(\�\�ެ�<�)�\n��!s>\�?\��ދ�=ꛋ�V.\��\0�I\ni\�L���\�\�\�\�z\�-4���\�gh\�\�4\0Uu%\�r4S�f^�9��\�ƾ��SjWQ�>��Q�\�}R�D��\�\�?7�,�\�\�7B3��\�\�?L\���<�F#Ѓך\�˹����jq��\�c�}6�۽m%ж>`���Z�ʰ�\Z\�M[�\�ʔd���2\�\�\�籟�A��˻昙1�\�\'�j��ͣ�e2/̸��յumEG\�{I\'�\�\�Um\�\�2[��\�s�N+ߡZ3�=HR��R��4�9z`2/$�\�ԟJ\��U�\�\�\�r3`���\����\�i�\�\Z0bW,��A�3�\�-)fM\�b��\�ª�\�\��{���\�&�*�vIW>j�E�ugZ��6\�m_䯲�\�T��$S\�$\�=ǵV�\�k�̋!)\n6]�\���\�\�\�\��\�.�\�?\�\��WS1\���09\�\�޾+5\�\�<[���ؚp��I\�ë/#�����E\'.�Hs��Ʋ�.��GxY�e\�=�}\�\�\'�\�xx\�+��).� ;2!$.x\�]Գ�ҵ�$�#\�\�{\��\�g��L:��\�7G�O\�QYwKK\�1�V\�3\�Ep��^�\�t\�\�*�\�g�̪23�\�\�Z(�\�q\�4�߈��\�b\\�Q\�\�=��ǈ/\r\�\�7\�\�����z�S�����?��\03\����r\�Q�\�9\�ȬY~^�����~�\�\�*��Am*��TS��\����`�\�z\�W\�ye�\�7,�8h�:3�\�\'\�^\�\��\�y2�\�;\�ܢ�\�\�\0ϵPPK�0�\'�{ָ\�Cm�u�|V\�\��ɲT�\�?�a�\�i\��p����\0]O�\�|\�b_\�k�}-<\�U�Fŕ\�3C�+�����Z\�FC\Z�\�s\���W{u=�\�m\�h��>\�;s�VƇ\�/�\�\�lR`\r\�8c\�Mv\��\nNJ�Ggӳ�\0�sqOb0\�%�\�{Г�_j-\��^kU\�\�\�l\"��x\�]9\��\rr�xRu2-�\�T#)���r3\�z}k��y9Xt\�Ӟ�i�\�.\�+ܟz���V���>o/\�\�)i\�\�\�X�S���\�W0]\�\�\�\�\�XN\���zֿ�^j\��)fL\�\�\�\��\�]\���Лk�Rh3�\"\��Ս���b�\�\�#�ι\�\�3\�=}?�_=W)�jjW�\�~��q�s�J��\�4�ꭦϥ�0�ɻ�X��\"�;؁�p	\�\�=9\�sL��y�$(�B�\�ol��\�\�*ˌ[�ǒ\�B\�\�F0x=;�Vű��8�&\'�9\�\��k\�\�q�G\�\�\�{խJ?#v\�1j��\�BY�\"+\��=�:\�Ee\0�&�Y1\�\�\�(���\��8\�u\'�\�������\�MQ0�p!\����5�\�\�Ԓ\�\�g\�Zc��3Jo.5��2\"1\�G�͟�T�g\'\�\�Y\�²��I\��\�\�eXЋRݞ\�0\�bi(P�\�_\�B���[�yr�d\�N�o,�\0�\��#+r�\��\�6��;&\�e�{�2��ܷ��G��\�DV\�����=��6\�\�\�ˀEChRx\�}\�~�*^[\�O<�u�%\�G\�`\n�^\�\�������\�\�-�i�;\�w�]\�]N�8L�2**�\'�Kex�z|E7,�\r\�ߨ댷���n�nfV\ZtL|�F_\�Wk*$� �\0j8j�,6-ҫ/zk\�}\��>��ү��\�\�/�\�|�\�8+\�\�r}\�\�\n\�\�$d\�B\��U\�.�NıP�H\�\�\�k6��N�%9��t\�ȯ�\�\�S\�\����oo\��\�b#�ѫ���\�:��o+N;KÊֵ\�B[+6rG@*\�\�-%(�\�U�`\'_J�c�P�\�}\�¾��\�9h�n~�\�y�J\nQ�v��֓�\�i,��,\�(r1%����u0^	��\�\�&\�yC��\�U\�n�_#\�l�u\�xcN��\�m\�ٞc˅\�U\�px<v\�ҽLyW	\Z��x9\�`�\ZY�/g6��\����\�}\�ua�\�n�O��\�}�Z\��p�\�\\�\�\\�åw\�[�[e�r02@\'\�ֹ\�F3o�\�\'\�/�p⸓\�8�\�Z;%��N�\�\�R䓼�\�\�%\�r�W&@#ft\���\�O\\}*�F�\��?)\��D�\�S�f\�\�@\�a\���ۓʹ�{Ir����O�pceO\�\�S\�\�\Z���Z=��\\k1B\�X�\0zV\��\06�#��0����xFZEl.\�\�����@�P\��M�\�x+\�(o\��r\�\�(�w\�>o>\�\�֥zO\�z$w�\�H\�\�\�=Mr�.��n,�\��o`A\��&���?8�p\�=���?\\՛U\�v�m����c\�ϥva\�J}O+�2\�R\����S��\�:X<�����\�c�{\�Ut9mKn�\�8��\�\��Q_KN*L��p��1U]�BG \�\�s�u\�\�Y\"\�]Z\�ZA�,��\�\�sQy�\Z�з�\"F^���w\���h����\Z�\�\�1�yc�Ɏ\�B�](�������\�:-3O�P\0\\q\�SGi\�#�\��4H\�2�\�6�\Z�T�z�_%\�N��\03\�}����ҖFfr\�񬖴K[؀����\�Z\�+���˕b8aɮeL�3oG\� }8\�װ�=\�\��XV�W\�ԓq�\�o}�4G��QP�NT�\��F\�\'\�ːG\0�\�\�\�6 |\�\�A�9\�Ҩ\\\�4Q\�#�o�69��� �����h�\�$\�$a�+\�\�ۥwf��\�\�8��2�\Z�+�;�%\�\�v8[/�\�ji�g2\\�$c��\�4M!4\�2:*\�F\0\�*冕e�#XBĳ�\�\�54�\�z��x��\�\�%9{�\�G\�8��W��āT��\rp\�\'ԙ\�x##j�\�w\����cSLd=\�a\\^��qp[|\�J\�؜�wϠ\�\�s\�(\�S^}_(Ƣr\�x\�\�X����޴\�d1�\�q�\�~r~�=j=F\Z=�<ΏrNC�1\�}~��<���/�#ӿ�\��W�<,����\�s\�x\�VW�\�_�!K[hdY#��L9�p7�C�g�S\ZWV@�\��*G�H�\�0\�$�x�1����5UI7t�/S\�S)B-7\"!Nn\�\�\�\Zt�\���\�sҹmr\�+]Fʫ2��9%y�K\�\�\�I5\�Ƅ��:ן\�!�Q\�໵Kbq��=W���*K�k\�D�(`\Z�I|���a���\��2c\��[ޟҊ-#�\��[)\"i\n:��h����vSI�3\�Ui\�J�%��:}\'L�Зʋil��M]:��s�9�X(\�=k�\���f�aXw\�Y�kRY\�q:\�c`I�\�\���\�\�c��G\���e[\�T\�힥Q\�[�`��Ϲ��\����6ў�Ԗ�K}g\�j\�[�@a�\\��y;\\�����{pzv��,e_݌~�\��GRM7��뵹���	C��ly|�s�z��\�o\�\�\�G&3�\�\�\�\�F8\�:��I\�B��(o1\�A<��\�u\�Ӷ�c\�\�,p��4\�aX�\��?�_ξ\�u)\�irAZ\��<=\'R�\�\��\'k��Ǌ3���c��Lף\�wP�&\�\�\�``z��k\�t���\�\�\�9ɭ1=̈́l`�ǟ�\�p+\��jbU\�?<\�\�\�\�)\�Z=���=:k�\�J�\�\�\�_��\"����!\���筴\�[S	%�\�)\�\�c�z֤z�i3��Cg�aK*�\'y~G.#:�= �^kH\�\�-#\�?\\U\�+Q�h��\'t\�\�q�\\��\��U�[eFiq��\���\�+�\�\�U���8\�;�־�\"\�\�B\�\�o\�v��>0ϪW����{�\0�\�$\".\��[�#�S[��\�wM��\�x��\r-Ɋ\�2�J�\�@;��PO\��^\"Ե\����\�\n�\'q�5\�gx:\�r��Ƿ���3LN\Z�|ߺ[\��:�K\�em�\�j����*K�\�-=ħ\'�\��V�X\�>\�8�\�OA[\Z6��w\���\�1��jyLpT%^��W~G��q���F�\��\�O\�nu˵���3��nv�_\�5\����\�\��\��\�PT}j\�-,-\�\�T�5E^�Q5�Pq־/�J�\�G\�_��\�\�\�ayu��+Α�\0`�\�(�\'b�\0+�W�\�\�\�\�qJ\�\�nu9u)�[�-��ֺ�\0xZ9\�w\�Ly�\"n7{�ocX���\�\\�Pb\nX�\0��x5\�\�B`��<\��\�}�w\�s\�q1�0��n�\�#mX����0\0�\0W!�#F�H��\�ry>������\�B�H�:�\�\�r�N\�\��\�Q�4>g����l\�s��\����\�\�Y:�t\����HQG��(U\�ڽHbgRw�:jVx����{t\"\�u6S)h\�3�Ъ\�\�Ol��C\�|7�e�򲃴�ʇ�9\�\�\\\�l�\Z��\�,��$\n\�\Zv\�G�^�f�*SQ�ڹ�\�\�\�F\�_\�Q�,FQx�@/��S�DI�_��\�`sҬ�\�-\�g֪\�\�^�wwf��\���^�YIV�yt>;\'o6Gp� \�\Z�\�\�?�zw�t\���e=�s�j֜C�\��\�\��՗b�n<יg�՝\ZI$��s\nu(��\�\�>�<E�\�[\�\�\��t�f\n\�\�~lq�\'���O	\�i1*Ig$drN2	��+\�!a<�0\�A\�\�K*�Gː2\0\'=\�c�ͪ*��H�~�7�T�\�\�\�y�ڮ>\�h�z[h�y!,�_+;{\�5\�]\�S�\Z\�T���\�s\\\�Ǆ\�\�u�\�\�\\��\��\��vg�1x\'J��6\�0Ζ%T��[I��qTn\�\�\�2\�\"*��\��\�;�\���-�jN�\�\�U8	�?�~S\Zq��7C\�\�^Q�LmCQ\�ui\�\�\�*����\�\�Z\�[�\0�/8\�b���\�\��1ƥ��?�\�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(4,'Paquete1',79.99,1,39.995,0,'0000-00-00',1,0,0,NULL,1,1,1,0,'','',1,0,1,'1/3,2/2,3/0.333',0,1,0,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `providers`
--

DROP TABLE IF EXISTS `providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `providers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `cellphone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`,`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `providers`
--

LOCK TABLES `providers` WRITE;
/*!40000 ALTER TABLE `providers` DISABLE KEYS */;
INSERT INTO `providers` VALUES (1,'No provider','-NA-','-NA-','-NA-');
/*!40000 ALTER TABLE `providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `random_msgs`
--

DROP TABLE IF EXISTS `random_msgs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `random_msgs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` varchar(512) DEFAULT NULL,
  `season` int(10) unsigned NOT NULL DEFAULT '1',
  `count` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `random_msgs`
--

LOCK TABLES `random_msgs` WRITE;
/*!40000 ALTER TABLE `random_msgs` DISABLE KEYS */;
/*!40000 ALTER TABLE `random_msgs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation_payments`
--

DROP TABLE IF EXISTS `reservation_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservation_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `reservation_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL DEFAULT '2010-01-01',
  `amount` double unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`reservation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation_payments`
--

LOCK TABLES `reservation_payments` WRITE;
/*!40000 ALTER TABLE `reservation_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservation_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservations`
--

DROP TABLE IF EXISTS `reservations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reservations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `date` date NOT NULL DEFAULT '2010-01-01',
  `status` int(5) unsigned NOT NULL DEFAULT '1',
  `payment` double unsigned NOT NULL DEFAULT '0',
  `total` double unsigned NOT NULL DEFAULT '0',
  `totaltaxes` double unsigned NOT NULL DEFAULT '0',
  `profit` double unsigned NOT NULL DEFAULT '0',
  `discount` double NOT NULL DEFAULT '0',
  `item_discounts` varchar(1000) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservations`
--

LOCK TABLES `reservations` WRITE;
/*!40000 ALTER TABLE `reservations` DISABLE KEYS */;
/*!40000 ALTER TABLE `reservations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `so_status`
--

DROP TABLE IF EXISTS `so_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `so_status` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `so_status`
--

LOCK TABLES `so_status` WRITE;
/*!40000 ALTER TABLE `so_status` DISABLE KEYS */;
INSERT INTO `so_status` VALUES (0,'Pending'),(1,'In Progress'),(2,'Ready'),(3,'Delivered'),(4,'Cancelled');
/*!40000 ALTER TABLE `so_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `special_orders`
--

DROP TABLE IF EXISTS `special_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `special_orders` (
  `orderid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT 'unknown',
  `groupElements` varchar(1000) DEFAULT '',
  `qty` double unsigned NOT NULL DEFAULT '1',
  `price` double unsigned NOT NULL DEFAULT '0',
  `cost` double unsigned NOT NULL DEFAULT '0',
  `units` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) DEFAULT '0',
  `saleid` bigint(20) unsigned NOT NULL DEFAULT '1',
  `notes` varchar(800) DEFAULT '',
  `payment` double unsigned NOT NULL DEFAULT '0',
  `completePayment` tinyint(1) DEFAULT '0',
  `dateTime` datetime NOT NULL DEFAULT '2009-01-01 00:00:00',
  `deliveryDateTime` datetime NOT NULL DEFAULT '2009-01-01 00:00:00',
  `clientId` bigint(20) unsigned NOT NULL DEFAULT '1',
  `userId` bigint(20) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`orderid`),
  KEY `SEC` (`saleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `special_orders`
--

LOCK TABLES `special_orders` WRITE;
/*!40000 ALTER TABLE `special_orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `special_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock_corrections`
--

DROP TABLE IF EXISTS `stock_corrections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stock_corrections` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint(20) unsigned NOT NULL,
  `new_stock_qty` double NOT NULL,
  `old_stock_qty` double NOT NULL,
  `reason` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL DEFAULT '2009-01-01',
  `time` varchar(20) NOT NULL DEFAULT '00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_corrections`
--

LOCK TABLES `stock_corrections` WRITE;
/*!40000 ALTER TABLE `stock_corrections` DISABLE KEYS */;
INSERT INTO `stock_corrections` VALUES (1,3,100,0,'Adjust','2015-12-28','12:22');
/*!40000 ALTER TABLE `stock_corrections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subcategories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `SEC` (`text`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (1,'General');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxelements`
--

DROP TABLE IF EXISTS `taxelements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxelements` (
  `elementid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ename` varchar(50) NOT NULL,
  `rate` double unsigned NOT NULL,
  PRIMARY KEY (`elementid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxelements`
--

LOCK TABLES `taxelements` WRITE;
/*!40000 ALTER TABLE `taxelements` DISABLE KEYS */;
INSERT INTO `taxelements` VALUES (1,'Exento de impuestos',0),(2,'IVA',16),(3,'Impuesto al tabaco',5),(4,'Impuesto a las comunicaciones',2);
/*!40000 ALTER TABLE `taxelements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taxmodels`
--

DROP TABLE IF EXISTS `taxmodels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taxmodels` (
  `modelid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tname` varchar(50) NOT NULL,
  `elementsid` varchar(50) NOT NULL,
  PRIMARY KEY (`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taxmodels`
--

LOCK TABLES `taxmodels` WRITE;
/*!40000 ALTER TABLE `taxmodels` DISABLE KEYS */;
INSERT INTO `taxmodels` VALUES (1,'Exento','1'),(2,'General','2'),(3,'Cigarros','2,3'),(4,'Comunicaciones','3,4');
/*!40000 ALTER TABLE `taxmodels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionitems`
--

DROP TABLE IF EXISTS `transactionitems`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionitems` (
  `transaction_id` bigint(20) unsigned NOT NULL,
  `position` int(10) unsigned NOT NULL,
  `product_id` bigint(20) unsigned NOT NULL,
  `qty` double DEFAULT NULL,
  `points` double DEFAULT NULL,
  `unitstr` varchar(50) DEFAULT NULL,
  `cost` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `disc` double DEFAULT NULL,
  `total` double DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `payment` double DEFAULT '0',
  `completePayment` tinyint(1) DEFAULT '0',
  `soId` varchar(255) DEFAULT '',
  `isGroup` tinyint(1) DEFAULT '0',
  `deliveryDateTime` datetime DEFAULT '2009-01-01 00:00:00',
  `tax` double DEFAULT '0',
  UNIQUE KEY `transaction_id` (`transaction_id`,`position`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionitems`
--

LOCK TABLES `transactionitems` WRITE;
/*!40000 ALTER TABLE `transactionitems` DISABLE KEYS */;
INSERT INTO `transactionitems` VALUES (4,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(4,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(4,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(5,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(5,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(5,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(7,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(7,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(7,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(10,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(10,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(10,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(11,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(11,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(11,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(12,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(12,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(12,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(15,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(15,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(15,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(21,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(21,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(21,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(23,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(23,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(23,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(25,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(25,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(25,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(27,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(27,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(27,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(29,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(31,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(32,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(32,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(32,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(33,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(33,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(33,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(34,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(34,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(34,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(36,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(36,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(36,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(39,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(39,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(39,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(41,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(41,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(41,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(43,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(43,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(43,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(46,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(46,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(46,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(48,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(48,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(48,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(50,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(50,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(50,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(53,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(53,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(53,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(55,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(55,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(55,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(57,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(57,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(57,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(60,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(60,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(60,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(62,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(62,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(62,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(64,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(64,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(64,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(66,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(66,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(66,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(67,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(67,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(67,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(69,1,1,2,0,'Pc',5,10,0,20,'Producto1',0,1,'',0,NULL,0),(69,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(69,3,3,1,0,'Pc',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(75,1,3,0.5,0,'Kg',15,30,0,15,'Producto3',0,1,'',0,NULL,0),(76,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(76,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(76,3,3,1,0,'Kg',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(78,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(78,2,2,2,0,'Pc',10,20,0,40,'Producto2',0,1,'',0,NULL,0),(78,3,3,0.3,0,'Kg',15,30,0,9,'Producto3',0,1,'',0,NULL,0),(81,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(81,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(81,3,3,0.6,0,'Kg',15,30,0,18,'Producto3',0,1,'',0,NULL,0),(83,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(83,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(83,3,3,1,0,'Kg',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(88,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(88,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(88,3,3,1,0,'Kg',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(88,4,4,1,0,'Pc',39.995,79.99,0,79.99,'Paquete1|  3   Producto1|  2   Producto2|  0.333 Kg Producto3',0,1,'',1,NULL,0),(90,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(90,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(90,3,3,1,0,'Kg',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(92,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(92,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(92,3,3,1,0,'Kg',15,30,0,30,'Producto3',0,1,'',0,NULL,0),(94,1,4,1,0,'Pc',39.995,79.99,0,79.99,'Paquete1|  3   Producto1|  2   Producto2|  0.333 Kg Producto3',0,1,'',1,NULL,0),(96,1,4,1,0,'Pc',39.995,79.99,0,79.99,'Paquete1|  3   Producto1|  2   Producto2|  0.333 Kg Producto3',0,1,'',1,NULL,0),(98,1,4,1,0,'Pc',39.995,79.99,0,79.99,'Paquete1|  3   Producto1|  2   Producto2|  0.333 Kg Producto3',0,1,'',1,NULL,0),(100,1,1,1,0,'Pc',5,10,0,10,'Producto1',0,1,'',0,NULL,0),(100,2,2,1,0,'Pc',10,20,0,20,'Producto2',0,1,'',0,NULL,0),(100,3,3,0.5,0,'Kg',15,30,0,15,'Producto3',0,1,'',0,NULL,0);
/*!40000 ALTER TABLE `transactionitems` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `clientid` int(10) unsigned NOT NULL,
  `type` smallint(5) unsigned DEFAULT NULL,
  `amount` double unsigned NOT NULL DEFAULT '0',
  `date` date NOT NULL DEFAULT '2009-01-01',
  `time` time NOT NULL DEFAULT '00:00:00',
  `paidwith` double unsigned NOT NULL DEFAULT '0',
  `changegiven` double unsigned NOT NULL DEFAULT '0',
  `paymethod` int(10) NOT NULL DEFAULT '0',
  `cardtype` int(10) NOT NULL DEFAULT '1',
  `state` int(10) NOT NULL DEFAULT '0',
  `userid` int(10) NOT NULL DEFAULT '0',
  `cardnumber` varchar(20) DEFAULT NULL,
  `itemcount` int(10) unsigned NOT NULL DEFAULT '0',
  `itemslist` varchar(1000) NOT NULL,
  `points` bigint(20) unsigned NOT NULL DEFAULT '0',
  `discmoney` double NOT NULL DEFAULT '0',
  `disc` double NOT NULL DEFAULT '0',
  `cardauthnumber` varchar(50) NOT NULL,
  `utility` double NOT NULL DEFAULT '0',
  `terminalnum` int(10) unsigned NOT NULL DEFAULT '1',
  `providerid` int(10) unsigned NOT NULL DEFAULT '1',
  `specialOrders` varchar(1000) DEFAULT '',
  `balanceId` bigint(20) unsigned NOT NULL DEFAULT '1',
  `totalTax` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `SEC` (`clientid`,`type`,`date`,`time`,`state`)
) ENGINE=MyISAM AUTO_INCREMENT=102 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,2,500,'2015-12-28','12:21:00',0,0,1,17612688,2,1,'-NA-',100,'1/100',0,0,0,'-NA-',0,0,1,'',0,0),(2,1,2,1000,'2015-12-28','12:21:00',0,0,1,17612688,2,1,'-NA-',100,'2/100',0,0,0,'-NA-',0,0,1,'',0,0),(39,1,1,60,'2015-12-29','17:37:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,24,0),(4,1,1,60,'2015-12-28','12:23:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,6,0),(5,1,1,60,'2015-12-28','12:23:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,6,0),(7,1,1,60,'2015-12-28','12:38:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,7,0),(21,1,1,60,'2015-12-28','22:34:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,15,0),(29,1,1,10,'2015-12-29','10:07:00',10,0,1,1,2,1,'',1,'1/1',0,0,0,'',5,1,1,NULL,19,0),(10,1,1,60,'2015-12-28','22:10:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,9,0),(11,1,1,60,'2015-12-28','22:11:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,9,0),(12,1,1,60,'2015-12-28','22:11:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,9,0),(46,1,1,60,'2015-12-29','18:57:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,28,0),(43,1,1,60,'2015-12-29','17:40:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,26,0),(15,1,1,60,'2015-12-28','22:22:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,10,0),(27,1,1,60,'2015-12-28','22:46:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,18,0),(23,1,1,60,'2015-12-28','22:38:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,16,0),(25,1,1,60,'2015-12-28','22:44:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,17,0),(31,1,1,10,'2015-12-29','10:11:00',10,0,1,1,2,1,'',1,'1/1',0,0,0,'',5,1,1,NULL,20,0),(32,1,1,60,'2015-12-29','11:49:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,20,0),(33,1,1,60,'2015-12-29','11:50:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,20,0),(34,1,1,60,'2015-12-29','11:51:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,20,0),(36,1,1,60,'2015-12-29','17:36:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,22,0),(41,1,1,60,'2015-12-29','17:38:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,25,0),(67,1,1,60,'2015-12-29','19:59:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,39,0),(48,1,1,60,'2015-12-29','19:00:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,29,0),(66,1,1,60,'2015-12-29','19:59:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,39,0),(50,1,1,60,'2015-12-29','19:35:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,30,0),(53,1,1,60,'2015-12-29','19:36:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,32,0),(64,1,1,60,'2015-12-29','19:55:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,38,0),(55,1,1,60,'2015-12-29','19:38:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,33,0),(60,1,1,60,'2015-12-29','19:42:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,36,0),(57,1,1,60,'2015-12-29','19:41:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,34,0),(62,1,1,60,'2015-12-29','19:53:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,37,0),(69,1,1,70,'2015-12-29','20:02:00',100,30,1,1,2,1,'',4,'1/2,2/1,3/1',0,0,0,'',35,1,1,NULL,40,0),(76,1,1,60,'2015-12-30','11:11:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,45,0),(75,1,1,15,'2015-12-30','11:10:00',20,5,1,1,2,1,'',1,'3/0.5',0,0,0,'',7.5,1,1,NULL,45,0),(83,1,1,60,'2015-12-30','13:36:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,49,0),(78,1,1,59,'2015-12-30','11:21:00',60,1,1,1,2,1,'',4,'1/1,2/2,3/0.3',0,0,0,'',29.5,1,1,NULL,46,0),(81,1,1,48,'2015-12-30','12:21:00',60,12,1,1,2,1,'',3,'1/1,2/1,3/0.6',0,0,0,'',24,1,1,NULL,48,0),(88,1,1,139.99,'2015-12-30','22:06:00',140,0.009999999999990905,1,1,2,1,'',4,'1/1,2/1,3/1,4/1',0,0,0,'',69.995,1,1,NULL,52,0),(87,1,2,39.995,'2015-12-30','22:05:00',0,0,1,3791600,2,1,'-NA-',1,'4/1',0,0,0,'-NA-',0,0,1,'',0,0),(90,1,1,60,'2015-12-30','23:44:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,53,0),(98,1,1,79.99,'2015-12-30','23:50:00',80,0.010000000000005116,1,1,2,1,'',1,'4/1',0,0,0,'',39.995,1,1,NULL,57,0),(92,1,1,60,'2015-12-30','23:44:00',60,0,1,1,2,1,'',3,'1/1,2/1,3/1',0,0,0,'',30,1,1,NULL,54,0),(94,1,1,79.99,'2015-12-30','23:48:00',80,0.010000000000005116,1,1,2,1,'',1,'4/1',0,0,0,'',39.995,1,1,NULL,55,0),(96,1,1,79.99,'2015-12-30','23:49:00',80,0.010000000000005116,1,1,2,1,'',1,'4/1',0,0,0,'',39.995,1,1,NULL,56,0),(100,1,1,45,'2015-12-31','00:05:00',45,0,1,1,2,1,'',3,'1/1,2/1,3/0.5',0,0,0,'',22.5,1,1,NULL,58,0);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactionstates`
--

DROP TABLE IF EXISTS `transactionstates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactionstates` (
  `stateid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactionstates`
--

LOCK TABLES `transactionstates` WRITE;
/*!40000 ALTER TABLE `transactionstates` DISABLE KEYS */;
INSERT INTO `transactionstates` VALUES (1,'Not Completed'),(2,'Completed'),(3,'Cancelled'),(4,'PO Pending'),(5,'PO Completed'),(6,'PO Incomplete'),(7,'Reservation'),(8,'Internal Credit'),(9,'Internal Credit');
/*!40000 ALTER TABLE `transactionstates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactiontypes`
--

DROP TABLE IF EXISTS `transactiontypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactiontypes` (
  `ttypeid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `text` varchar(50) NOT NULL,
  PRIMARY KEY (`ttypeid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactiontypes`
--

LOCK TABLES `transactiontypes` WRITE;
/*!40000 ALTER TABLE `transactiontypes` DISABLE KEYS */;
INSERT INTO `transactiontypes` VALUES (1,'Sell'),(2,'Purchase'),(3,'Change'),(4,'Return');
/*!40000 ALTER TABLE `transactiontypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(50) DEFAULT NULL,
  `salt` varchar(5) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `phone_movil` varchar(50) DEFAULT NULL,
  `role` int(10) unsigned DEFAULT '0',
  `photo` blob,
  PRIMARY KEY (`id`),
  KEY `SEC` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','C07B1E799DC80B95060391DDF92B3C7EF6EECDCB','h60VK','Administrador','','','',2,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `v_groupedSO`
--

DROP TABLE IF EXISTS `v_groupedSO`;
/*!50001 DROP VIEW IF EXISTS `v_groupedSO`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_groupedSO` (
  `orderid` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `groupElements` tinyint NOT NULL,
  `qty` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `cost` tinyint NOT NULL,
  `units` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `saleid` tinyint NOT NULL,
  `notes` tinyint NOT NULL,
  `payment` tinyint NOT NULL,
  `completePayment` tinyint NOT NULL,
  `dateTime` tinyint NOT NULL,
  `deliveryDateTime` tinyint NOT NULL,
  `clientId` tinyint NOT NULL,
  `userId` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transS`
--

DROP TABLE IF EXISTS `v_transS`;
/*!50001 DROP VIEW IF EXISTS `v_transS`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_transS` (
  `id` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `clientid` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `state` tinyint NOT NULL,
  `itemslist` tinyint NOT NULL,
  `terminalnum` tinyint NOT NULL,
  `itemcount` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transactionitems`
--

DROP TABLE IF EXISTS `v_transactionitems`;
/*!50001 DROP VIEW IF EXISTS `v_transactionitems`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_transactionitems` (
  `datetime` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `points` tinyint NOT NULL,
  `name` tinyint NOT NULL,
  `price` tinyint NOT NULL,
  `disc` tinyint NOT NULL,
  `total` tinyint NOT NULL,
  `clientid` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `date` tinyint NOT NULL,
  `time` tinyint NOT NULL,
  `position` tinyint NOT NULL,
  `product_id` tinyint NOT NULL,
  `cost` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transactions`
--

DROP TABLE IF EXISTS `v_transactions`;
/*!50001 DROP VIEW IF EXISTS `v_transactions`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_transactions` (
  `datetime` tinyint NOT NULL,
  `id` tinyint NOT NULL,
  `clientid` tinyint NOT NULL,
  `userid` tinyint NOT NULL,
  `itemcount` tinyint NOT NULL,
  `disc` tinyint NOT NULL,
  `amount` tinyint NOT NULL,
  `date` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `v_transactionsbydate`
--

DROP TABLE IF EXISTS `v_transactionsbydate`;
/*!50001 DROP VIEW IF EXISTS `v_transactionsbydate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_transactionsbydate` (
  `date` tinyint NOT NULL,
  `transactions` tinyint NOT NULL,
  `items` tinyint NOT NULL,
  `total` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_groupedSO`
--

/*!50001 DROP TABLE IF EXISTS `v_groupedSO`*/;
/*!50001 DROP VIEW IF EXISTS `v_groupedSO`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_groupedSO` AS select `special_orders`.`orderid` AS `orderid`,`special_orders`.`name` AS `name`,`special_orders`.`groupElements` AS `groupElements`,`special_orders`.`qty` AS `qty`,`special_orders`.`price` AS `price`,`special_orders`.`cost` AS `cost`,`special_orders`.`units` AS `units`,`special_orders`.`status` AS `status`,`special_orders`.`saleid` AS `saleid`,`special_orders`.`notes` AS `notes`,`special_orders`.`payment` AS `payment`,`special_orders`.`completePayment` AS `completePayment`,`special_orders`.`dateTime` AS `dateTime`,`special_orders`.`deliveryDateTime` AS `deliveryDateTime`,`special_orders`.`clientId` AS `clientId`,`special_orders`.`userId` AS `userId` from `special_orders` group by `special_orders`.`saleid` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transS`
--

/*!50001 DROP TABLE IF EXISTS `v_transS`*/;
/*!50001 DROP VIEW IF EXISTS `v_transS`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transS` AS select `transactions`.`id` AS `id`,`transactions`.`userid` AS `userid`,`transactions`.`clientid` AS `clientid`,`transactions`.`date` AS `date`,`transactions`.`time` AS `time`,`transactions`.`state` AS `state`,`transactions`.`itemslist` AS `itemslist`,`transactions`.`terminalnum` AS `terminalnum`,`transactions`.`itemcount` AS `itemcount` from `transactions` where ((`transactions`.`state` = 1) and (`transactions`.`type` = 1) and (`transactions`.`itemcount` > 0)) order by `transactions`.`id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transactionitems`
--

/*!50001 DROP TABLE IF EXISTS `v_transactionitems`*/;
/*!50001 DROP VIEW IF EXISTS `v_transactionitems`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transactionitems` AS select concat(date_format(`t`.`date`,'%d/%m/%Y'),' ',time_format(`t`.`time`,'%H:%i')) AS `datetime`,`t`.`id` AS `id`,`ti`.`points` AS `points`,`ti`.`name` AS `name`,`ti`.`price` AS `price`,`ti`.`disc` AS `disc`,`ti`.`total` AS `total`,`t`.`clientid` AS `clientid`,`t`.`userid` AS `userid`,`t`.`date` AS `date`,`t`.`time` AS `time`,`ti`.`position` AS `position`,`ti`.`product_id` AS `product_id`,`ti`.`cost` AS `cost` from (`transactions` `t` join `transactionitems` `ti`) where ((`t`.`id` = `ti`.`transaction_id`) and (`t`.`type` = 1) and (`t`.`state` = 2)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transactions`
--

/*!50001 DROP TABLE IF EXISTS `v_transactions`*/;
/*!50001 DROP VIEW IF EXISTS `v_transactions`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transactions` AS select concat(date_format(`t`.`date`,'%d/%m/%Y'),' ',time_format(`t`.`time`,'%H:%i')) AS `datetime`,`t`.`id` AS `id`,`t`.`clientid` AS `clientid`,`t`.`userid` AS `userid`,`t`.`itemcount` AS `itemcount`,`t`.`disc` AS `disc`,`t`.`amount` AS `amount`,`t`.`date` AS `date` from `transactions` `t` where ((`t`.`type` = 1) and (`t`.`state` = 2)) order by concat(date_format(`t`.`date`,'%d/%m/%Y'),' ',time_format(`t`.`time`,'%H:%i')) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `v_transactionsbydate`
--

/*!50001 DROP TABLE IF EXISTS `v_transactionsbydate`*/;
/*!50001 DROP VIEW IF EXISTS `v_transactionsbydate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `v_transactionsbydate` AS select `transactions`.`date` AS `date`,count(1) AS `transactions`,sum(`transactions`.`itemcount`) AS `items`,sum(`transactions`.`amount`) AS `total` from `transactions` where ((`transactions`.`type` = 1) and (`transactions`.`itemcount` > 0) and (`transactions`.`state` = 2)) group by `transactions`.`date` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-12-31  0:09:13
