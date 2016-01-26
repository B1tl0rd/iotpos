-- MySQL dump 10.13  Distrib 5.5.43, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: iotposdb
-- ------------------------------------------------------
-- Server version	5.5.43-0ubuntu0.14.04.1

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (1,'2016-01-16 09:18:35','2016-01-16 09:18:35',1,'admin',0,0,0,0,0,'',1,'',0),(2,'2016-01-16 09:34:55','2016-01-16 09:34:55',1,'admin',0,0,0,0,0,'',1,'',0),(3,'2016-01-18 21:51:59','2016-01-18 21:53:57',1,'admin',100,200,0,300,0,'5,6,7',1,NULL,1),(4,'2016-01-19 13:38:41','2016-01-19 13:38:42',1,'admin',100,0,0,100,0,'',1,NULL,0),(5,'2016-01-20 10:43:42','2016-01-20 10:44:42',1,'admin',100,0,0,100,0,'',1,NULL,1),(6,'2016-01-20 12:33:59','2016-01-20 12:33:59',1,'admin',0,0,0,0,0,'',1,'',0),(7,'2016-01-20 12:39:47','2016-01-20 12:41:33',1,'admin',100,80,0,180,0,'11',1,NULL,1),(8,'2016-01-20 12:45:47','2016-01-20 12:46:29',1,'admin',100,0,0,100,0,'',1,NULL,1),(9,'2016-01-20 12:49:16','2016-01-20 12:49:27',1,'admin',100,0,0,100,0,'',1,NULL,1),(10,'2016-01-20 12:49:51','2016-01-20 12:50:17',1,'admin',100,0,0,100,0,'',1,NULL,1),(11,'2016-01-20 12:50:36','2016-01-20 12:51:50',1,'admin',100,0,0,100,0,'',1,NULL,1),(12,'2016-01-21 12:00:26','2016-01-21 12:00:37',1,'admin',100,0,0,100,0,'',1,NULL,1),(13,'2016-01-21 12:22:52','2016-01-21 12:24:17',1,'admin',100,0,0,100,0,'',1,NULL,1),(14,'2016-01-21 12:40:34','2016-01-21 12:40:56',1,'admin',100,0,0,100,0,'',1,NULL,1),(15,'2016-01-21 13:46:30','2016-01-21 13:47:27',1,'admin',100,120,0,220,0,'20',1,NULL,1),(16,'2016-01-21 13:57:40','2016-01-21 14:16:10',1,'admin',100,0,0,100,0,'',1,NULL,1),(17,'2016-01-21 14:01:42','2016-01-21 14:07:54',1,'admin',100,0,0,100,0,'',1,NULL,1),(18,'2016-01-21 14:02:47','2016-01-21 14:07:43',1,'admin',100,0,0,100,0,'',1,NULL,1),(19,'2016-01-21 14:04:35','2016-01-21 14:07:34',1,'admin',100,0,0,100,0,'',1,NULL,1),(20,'2016-01-21 14:05:42','2016-01-21 14:07:48',1,'admin',100,0,0,100,0,'',1,NULL,1),(21,'2016-01-21 14:07:01','2016-01-21 14:07:40',1,'admin',100,0,0,100,0,'',1,NULL,1),(22,'2016-01-21 20:32:33','2016-01-21 20:32:53',1,'admin',100,0,0,100,0,'',1,NULL,1),(23,'2016-01-24 22:25:31','2016-01-24 22:26:24',1,'admin',100,0,0,100,0,'',1,NULL,1),(24,'2016-01-25 13:07:48','2016-01-25 13:08:28',1,'admin',100,80,0,180,0,'33',1,NULL,1);
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
INSERT INTO `config` VALUES ('yes, it is February 6 1978',0,'','IotPOS Store','','',0,0,1,'0950');
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
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,1,'2016-01-16','09:28','[SQUEEZE] Purchase #1 - 100 x Herashey bar (1234567890123)'),(2,1,'2016-01-16','09:29','[SQUEEZE] Purchase #2 - 1000 x Doritos Nacho (1234567890124)'),(3,1,'2016-01-16','09:30','[SQUEEZE] Purchase #3 - 1000 x Coca Cola (1234567890125)'),(4,1,'2016-01-16','09:34','[SQUEEZE] Purchase #4 - 1 x Paq 1 (1234567890126)'),(5,1,'2016-01-18','21:51','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(6,1,'2016-01-19','13:38','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(7,1,'2016-01-20','10:43','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(8,1,'2016-01-20','12:39','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(9,1,'2016-01-20','12:45','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(10,1,'2016-01-20','12:49','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(11,1,'2016-01-20','12:49','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(12,1,'2016-01-20','12:50','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(13,1,'2016-01-21','12:00','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(14,1,'2016-01-21','12:22','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(15,1,'2016-01-21','12:40','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(16,1,'2016-01-21','13:46','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(17,1,'2016-01-21','13:56','[IOTSTOCK] Purchase #22 - 100 x Raw (1,234,567,890,127)'),(18,1,'2016-01-21','13:56','[IOTSTOCK] Purchase #23 - 0 x Unlimited (1,234,567,890,128)'),(19,1,'2016-01-21','13:57','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(20,1,'2016-01-21','14:01','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(21,1,'2016-01-21','14:02','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(22,1,'2016-01-21','14:04','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(23,1,'2016-01-21','14:05','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(24,1,'2016-01-21','14:07','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(25,1,'2016-01-21','20:32','[ IOTPOS ] Operation Started by Administrator at terminal 1'),(26,1,'2016-01-24','21:40','[IOTSTOCK] Purchase #31 - 100 x Pretzel (1,234,567,890,129)'),(27,1,'2016-01-24','22:25','[ IOTPOS ] Operation Started by Administrator at terminal 1'),(28,1,'2016-01-25','13:07','[ IOTPOS ] Operation Started by Administrator at terminal 1'),(29,1,'2016-01-25','20:22','[IOTSTOCK] Purchase #35 - 20 x Neon Jelly  (1,234,567,890,130)');
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
INSERT INTO `products` VALUES (1234567890123,'Herashey bar',10,88,5,12,'2016-01-25',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0R\0\0\06\0\0\0TI��\0\0\0sBIT|d�\0\0\0	pHYs\0\0\0\0\0��\0\0}IDATx��i�չ���z��Y`�A#�\"(QrAc�I4.�AePQ�8�^��1�zo4Q�q�0�(\"8���ꅋJ��AD4��3[��Rյ������������?OC��S���?�z��>��}�C�Ї)�4�|��������`Yy]�2��g�A�����x+�es�NR9��_��`4�u\r��aN�m��<�y��ꈆ#ll���=�,�W����������T]�Ʃ�?�}�.�{�0�*`�Z�D��dw����FJ͈�dn�Q~X�h\r*\rO=Z\"H�_-\0f(�iY\0X�E0��DQ�$�1E�g��j\"��ݪv���;5�~\0!��$��rd��P}���(Z<J@s��̤��:)C\'�͒7��,��H�kh�o �����%�̀���;�������m#3ǁ���h4 ����\0����i�p-�2�$3i:SIr�N��]|jYX���(�3` �a�ʤ��y�2��.$��F���#�x4J�v尐ˈ�P.�W�G��o����B^�꺄h@c�p��%�L�´,��4]�$Y=�n覉��޸�tP��#\0&Ξ�У��m�O8w�B��`Yy�@�J��Ϛ̀���7:��`�Ԡ���#����ȱخ����򭠌*>8�BA oqh(��X���I��T����ʤIg�l��|��&ҹ�c{�\0 i���a�y���:\r_ۗ`8@k�L\0FL@Z�\"�%-�2�w��.t,HV���Q�v��HQ��7\"��UԬ.T8��kiƩ�IА����:=�Y=��[?ǲ�*�*b�	8b���7p��30dSo��\'�\Z���i�Yq/\03�ƒ��d�u���P,��\'O��%\0L�f>O�����<�<�YjW9)2�®��{��usq��1��#�w��D+��v:��U�����?�h��ӶHe��t���cۮ�|��s��\"Q�D��̝A0\Z���oFC!گ�����S����M`�������r,a�4&ZW�nb���B�w.��%:��\rL��\n��L�sʡM��C��\0;�\0\'B��[G��:v�j�N�i\Z�`۶QU�P �e���<�$��.�uv�c�i@V�hl\ZJ~�n�,M��m����mKhm�Ig�V������s�{�)\0�r>k~{oi2� ~tHW^5�a�RJ�@�\0�Z.�=OJ�-h$Q�\'o�ñ�|�\Z[�S�]\n*AU�k������_\0�9�#&�G��i{�;;z�0����C!TU%�͢�fY�tH�]��=�y���\\Μ�u\'S�w��o^��!f�s{�5�W�͢�.��Z�㞋攈��>\"-#��\0�N�m�5�~�5\0D�����\"�\0���wM=��O\\\r��� �+����q��;_PҸ$�Q���cr�[�o�/��HvӑJ�1t�D7M��ivv�ӣg9�G3������0�����-抶G�8w6�zW�`u�\00����H�X����i8e֐؟�Hx�P4�~���g��{��-3�[\'��k� �<���vZ�$ݶ�\n�;��CS��E�X&u��IwG�$Y�-Λo�ӱ��r�V.��p܌sI4��V4�LQ	�4���<��B�t�gw�����U:��$E�g�H�\Z�{�,^˗m4�\"E(�D�������,=r�#t�D�ۨ���K���q$�H�XO6��[��L��&��ґI�������Ը�g�����(B����ڭ�3�k��DE��-��9r�1,h�^�h<�ӿ.� 5M�tn�A(%W�0�e�Jܶ�?��[�3���z�\0�ϻr�$��U,h��mӢ�{\00mŴ�m�\Z��D�h\"�Cy̡�]�8��,�mz�3�E\n�x̻Q��O�^�S��??��k�q��#,#�?��o�Q��g�͟͞x�i��Ȳ�˹㔳X:�2���E��\0`����*r��\0H~��w^�%��?\r�֩����|����P����������)��R��$S�6����+&ϛ�#^m{�4���K:|4�ix�#N��g>\Z%����^0\0h\Z9�L@@���K��SzO���\"$6o|�tB��������?�8�\"|�]��&&ߜz��G=b�PP�!M���+#��ݕ$���D&�M��P!�����B�̭��~�ѧ��=�L�l���>�K	��מp�to��a�g�v��^~�OXpƌR\'�?&&�P���׼K�d���k��1��(�-�\'_�B:�H�5��W\ZZU�4��m1��-���?��jy�`;6	�\r8=�I6�#����K~��H�ߓ-8ҐP�\nd�Rr�9��zf���3�,L��HE�>�,#OK�b�>��J�\r\Z��ڦ���P�/i[�#^YY��\\*�K+�y�Q���H�n��\rO�\\����3��4V:��BQ|]$��k�\r,$�p$�����ʱz�H�@b1_��l��|���>��tu��hQ�_�B����:��A_�u�L�4�˞}��m^�aȾU)P�\\ET��O�r�F����X\0p��)�H@bT�[\r��=(�=���J7�G�oy�TzI����+\\�FXf�տ���ΗDk�LB��^�j=��r�q���4��U�T��������W�k�<��\\��4^\\r?߿l.�8�K����j���GEx��5oA�`�#�S5�tgW��}��?yǿ�v!�^z\r���o������}�<�(-m�ii[�#�Lɍ��Xv�\Zؽc�o�JD5���������L�w��7���^�Ώ��6/���#�F��n�	�\n6%\Z\"�x����/9�e-��+\n!\r�y�Y�m���S\n\'Ξ˓7��¦!���^;M��/�.I)��ܑ�G��O��e>�-Jф�m��]��GmE(�=�b�x;7�m\'6��G���hFA#%nɨ�J\"]��&](�4�HMUɦ�U.�uҼ��D\0�ۍih\Z�	\Z���r�$_Jt򕗳vy�Wy�y���}�U��^{�;N���*�^ҕ����d�wn�q�L�Lehm�����/�\\C\r* ���W~\"sX��=��@\"MQP��*�j��h��ǲy�^��y%M9��+{�Q���߷�5i�|���^[\'�^LL�z�	�=���|�4�l�X�g��MI�V����/�!%\r�(���U�p�PM�@���i����T��t���)d���)W]NOW��~̷�d�a�&zCe\r�X(�����s�H�z���z?c\Z�lX��������7ׁQwN>��S~������i��D0�A�ȡ�\"A(o	G�Q%vM����\n�ANcE��W�j>7��쇦�D���Xԗ�KG�6�9�K�~�|Z��BQ��-4����3�\Z���sg��=l�u�y�B�D�%��;P��k�*��\'ͻ�������R7���7�M��EE���Q�#�PjFx\Z����Y�A�dH�6i+��JM+�׆�T\0�~-dϖO�OH��S��3}uy���-0�[�޼�qV;�L��n^��g]{��OO{;&&��[O��\'P(uC!Wq�Z!�����:[��d쪷@ɩ�\nM��t�\\��3d�hn?�nm��ճ�,ic���x����w6|�(U�J7��x��̽�W8Hξ�\'�_���W���\'���ࡻ�`������^}ᱳ�a\Z:�^{)�2�X���.�\0E(�%�i���i;��x������<����БJ0���^���<������O>��U/����{cĸ#���k��ݘ��w�Y#�9T��鱻��ij:�G����HY��U�f�����|��^�w����)��Rr��7��M<s����7��}����F6����������h��L��vQ�!|&ԅI����v��dӱ�e�/JV����!+ShD�p��wo�&�L1g�D��F�3F��\'L�}F�࢛~��\'Ou7%d7��y.��\Z�MOg7\'\Z�jU�B!�����HL$&��w��$\\�5��\'HV8lI���r���,���c�N$�A�Hf��o�\ZvwuV���Ы#i`XL:w\n�y-g�{��Fw��N\'�ap|č�N&*\rI?>r[^_�\Z�~�4A�AHeR�i���=m*������-8,TD�Oq_���(�Y\"���t��ҷؑ���^��N�;`	�l=\ZGSտ��ްFo��Ù�h��E(}�	�^溂�7���E?j9\\ޔ�	�~.�o��\"�܂d�a�����K�@^i5܀�_W����6\Z�m����3����\r>�<��v���]X�X���\Z�tz�/^��L{������c�3�o��:�y~Ew\\�ST�I�ק6���,v��D�e\Z��QZ �rJ��z�F�?�#�pQ�`V�g\0P0q�I�p,������{篡7�.�� }~����@�c%��F3�Z���bQ^2����/>��-��p��[��F0DU�6�.�Sl,�~hP>����f�P�+��\"��͹�q}�d�}7�K���F���E�(jy��]n�v(����n��a��jY��:#�$���B�-2=\Z�f��_��Oe�_�~�QU*FL�A����cq�͎ң�|�M�/lnB�\r\r(*HEr��p�����2Q���Vj�L7�h�cq����;��%W�z4(��Ȑ���Lf7��o����\0�/�*\"�#�1�b#��b@��l��E]P�C�֬����2PE���2��l�$��/C�>��}�C�Ї�;��X�Ň�˛\0\0\0\0IEND�B`�',1,1,1,0,'chocolate','',1,0,0,'',0,1,0,0),(1234567890130,'Neon Jelly ',200,20,100,0,'0000-00-00',2,8,0,'����\0JFIF\0\0`\0`\0\0��\0C\0		\n\r\Z\Z $.\' \",#(7),01444\'9=82<.342��\0C			\r\r2!!22222222222222222222222222222222222222222222222222��\0\07\0R\"\0��\0\0\0\0\0\0\0\0\0\0\0	\n��\0�\0\0\0}\0!1AQa\"q2���#B��R��$3br�	\n\Z%&\'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������\0\0\0\0\0\0\0\0	\n��\0�\0\0w\0!1AQaq\"2�B����	#3R�br�\n$4�%�\Z&\'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������\0\0\0?\0�oiw����ߺǔ\0��|v����]\\E0\"�xf8^=�j�73[�s8D����� ���\0J������>�\"{�\r�H��c�7�����لe^t�>d��������:�y}\'��Q�w廳�?=z\'�Y��E�V���\0�O_L�Eť���\0�a>\\�p�t�}��l,��}��q�����?�>��j/��u��\Z��b$���v�+4�p�ꪸY�u��<�o��W�T����3U$U��d/��	�\n�o!�WM��<*q�w9?ʳ���M�.׉7)����\0ת��2Iy�\n�����	���V\n��M�um�\0#�k�*c(�i�M�4��u�]�jdk�w\0{������\"	���zco��T4+yo/^[���Մ������k�a�P��9@�8�zЌ\'��i�z#�3y֖\"8\nt��Փvi^�]z�t*�����G\'�\Z��#=����2���vd|�\'�����J��s$%�d�70#;x�N��\0j�4K`�r\\Rd^��������2�[��[��+���*�Ϯ�U���y�.��<�Nw1l�֊�K�ظ8���q76��_��y��ey쥹�Zi�*�W�Oǎ����L��Irf1�\r#�d���U�G\\�t�H��|�9g>�ְ,�\'����Vi�v��\'[�+�U+V��k�={���-)�E.Ɯ�%ͱkYW���ٸ���>Ց�iq�$���8�X��r��jY�n�T�И���{gZ���x�j���������+�煡��K0���q�W>/�jU�iW.�;U�7,�w���ko�b�֛5�ؽ��������ꧦ~�y�f��[^9��{i!`��\n�ێ}G^�U�-z��x�;%\'l�����\0]jJ����E%�sÃ.GG��=�.��ϕ�{����W��yn.�0�픟,d�o��g��E��+(�6ٮ?zYA|�x#��f�\r\Z�r��;Y�ax�3���|�\\���<:�a\0��^���kb�S����&P�|���k;�Փ�\n^��[�W�*M�m_�_ԥ��]�I\n������Oc���xzy ��|e2-�?��f�aa��%ͻ�/ _;��I��:t�-\"�d��ڪ:�8>�\r�EB!.f�~�E�1t1�(Ԥ�����Ѕ�Pbq��Yk`�A�q����\0Z����޾�~${\n�s��m�ު׷/�8�Qd6?��8}���m,-����OV9?\\�%�����s�`H�&��#<m^��ˏ�SIZ\\��B�͙¼�us�x�ҽ:����ڔwZ�e�	��-9sTk__?�\Z6�2Z�kP #srY�S�ZĹ�x�x�9hX.8�z��Һ�J�vT#(��(�?�ָSP�H�Y7K+�HrOLL߫ɫb���~�t��.��/��X=:�0��_��~���s�imf�\"`X��\n	����v�:m��tm�r	����\0��+?K�.�a��k󋒹(#$��#��ҫ�������B9�oS^UO�ck*tb���x��(ыs��[rK���\0\r��)$�uY��V,��\n���~O�S�[����t����`(�#����O��\r�B �yyd n\'�O���`q\\ƥ�[��\"����I��l׻_\'��\Zm]��e�G�C����ݒѦ���sc�6�2۬���2\0�d���6����H2���;Wdg��\nM;��w�~#���9Ke`0}I�N}�V�,l>c�5-�~����\0Z槍�����i�}OK.�hB���>X�V�}�V��Q�~�n0q���T?�xK�8tq�\0|�+����gw��\\��_s�\0#��uࠠR�������U��Z�WDl$?Ñ��9�~�J+�<��`T��ܬ~c��kJ��~��2�Z(���[�g<W=��բ�v<�����8������u�J1�z#�.|;�=c�ݾG��i��\n��J����g���\0��nY��{�b�+�pp�Z�w����c��r�k�z߃��L��\"��b\n\n��z1�Ƴ���Ҟ�d�K��E,Q�ڠ�y�Oj(���q)J3w�M=5�va`�%���M��p#�0�1��Mg�+,��7�a�a����=��������g$�Otc6�8b1����+ꣁ��v3��?��',1,1,1,0,'','',1,0,0,'',0,1,0,0),(1234567890124,'Doritos Nachos cheese',20,988,10,12,'2016-01-25',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\09\0\0\0R\0\0\0�+|\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0��+\0\0 \0IDATx��i�]Gy����n��vK�-K��E�$�lIز��$!d x2LBH�$�e2�11a�	�f �!6^��%�ڗVK�߾�Y���pn�Z�f♏�L=��{��S��w���������M��\\<{�خ�_�s׍ϻ��ǿ�\0�~�]��{h��-[��ʝ���w�{�v_�3��{�7_��?������o~�����M�_��V�_I\'e�Ӧ�W�=�pߙ�ۻ�S����=����QER<\Z�4�6�6�ǹ�� �E��l���0 ,���ҿj��O%,�V�p�Ck\r\"���>�z�8%k(�\"J��f��Wb�,\'�#��.Y��NR�Zm�єJ!A��hL��\'�Y���,I)��kp^��E+��s�zwX��Aq�-�0{z�����֛�?y����)�U��������I$w��mG�����\0.�ȓ%���R\n�=Zk�r\n\ZS��/�ԡ����<y��t�v��r�Z�4�Ё!��d��!6����K�Zi��KT.�g)A�c�O�V�ܼQN��$Ԇ\\��R\n���t�C+Ed,(�U\n�4J)�RT�- �9��9�R(��\0X��*O[�s��!^HrG�<VkD��\'�[�\n\r���R�lB�:-�t�`Q�H[�>#�3em��u/����������~j]��}_���^<Mɱʠ{�T\n�LX��\0iQ4|F�笍�=�\ne4��6�*��{֕*DA�(�궱�ф�!0����Mi\'�<#��R��3����Y��$.��sm2!}#5.��rl)������\0���H�\\��7��e]əM�����w�21�AH�\rJ��(��<g*Op�	��*͐��L1H^��{��6���(F�2qh�V��I�H��<8�P��N���CIY4�6,�G0�a���\0TW�V�4&�8��i�;6�g�/@�AX���z-�ZQ�7;$�͉yΞ�FrGl,���B\0Q`�F�$�AH}!vK�V\n�0���*WB��=�*D	��ѱ�m-&0Ƣ�ņ!Y7��!>w(/�`�!�P\Z������d����v9�M�*(Pw)G���}\\�3ϣ������P&����G�� ,FP�[�Qq�\06���<\"�2���ct`QV�G�@�pyV��-�0@[�y\'%��CCX��\')���5�d�ss�L�!Y�K����C�8 �\r����=ՠ;9���Ȼ)�4!�E���L�p��V\n1��0�P��E�3�*0� �e9��b� ΃5(��Z���%) (S�R�-+���4G�6���N���,I3!og���c�&��[Fh��%m(kN�\0��_�R���tz���\"o0��,əy�D��Ȼ)ov�V	�F\n�<Fk�0 ��8$�0��W��W��_�jM`-aـ@c1(�(\"B�@��1�Z{ħdi��3Osl7ӀF�Rl�F�#:�\rj6�Ld	�q�`	�yOT�m�~�\\�\n�:��6�<s��xZޑ���Qe0��[��u}5�0���\Z��^�\'��݈\0�=�h@A!�/~�loF-�P�����cH��~/x\'H�#����9=�\\�˙��i��{���Z)$��2T�1�`:��F��tsfӄ�*�{Ϝ�������_��e�P5�Ke��T��2T�r�(*4((��*)��{�5@>� ��9��ǐ<#(kL�0���g�|.P��dY�-��t��s*�o��\0�;�f՝}ò!ɱ֠��k��\"�B#K�z����9>r�\Zn�?�Cd�2>��Y]�P3!����f13K�Z�.�����*��A1sx���6`�B��y�Ph\\3�<l8��@�������R��9�Q�%\"�	�&��ḌQ���p������s�MCظĻHy}g��u�^ȀLA&\nY`R�B+�hM�5^k�҄ZhE�4ūq\n�U��t<*���A�`+��PH�u�#���~��i�o&���D64�G1�aH�\r�y� ����C�/=����=��KGQ��;���[S��Z�\n��N)r�p=�L��*\Z4F+����h�Щ���<��@G��/�L�1eC�	WW~<H��s��Hc#CP���Q5 Қ��TtZ��&PgO�u��7x�ݻH�}]_c�9ޔ�s�Yg6Mi;�U̐VX�z�Ъ���\0�Q�U�p0���R_�Ud���X\'t�����G_��2y����S�]���J �\Z%\n�.s̍�I��Xs���ػm_<{���g�j�<��U�E?��6#��I��\'�~Bc��A�Ȟ\n_�c�0H����8-\n�\n�ϐ�AX�8�f$y�c�.������_.A_���@�@rj�f7A��n�z��7�&q����e�Go(\n6Y��ꭐ��g�RT�!�/�\Z�kX�z���-x5�~��J�P��9�L(Cߪ�����S�2ȏ���+�(��bz�ϙ}g0(��s�ݤ��m�<Wof���H�!ϸ�~�yk�Ĭ����$)�8���D�!�6���,���,S(U��@���`N2�gJ��-\'�,ô\"�?(U$@�md���#L�\'I�Ø�(B�b\"�2�t���<�V���M^r	PzK�O����g\Z��Q��H��Hb�^�n��DA.B�;��*��X�U�0�{��s��[�cO>�sw^����.��,�pu��ߴ��ǎ�)�����x�O�=o��]���G�!r��z�\'�S�b�D��Ύ�x�)�xǚ�D�\\Nq��jq\0���ϡ�C�;ڒ�zO&���.�eyF��ͷ�SBb�K�[�F�Ž�,\Z��v������<E(�ˎ�� �,���\r\"�%TA�����_�Bw���S�+9�3�����1��b�\0&���4ŉ��[�\\�pTf�\\���gBZ��]A:5O����\'{��R�c�\"\"�?8Bښ�24�#S�|j�\"�s�o͍�0��\nk���s8^s�cc�K6�u���r��؀�v��j6�[�C����F�lM�7�\0oI�x]���ZMD\n��|���<cG�*�`vzY�/hO�����W���_&�[%�]�E�s�e��rU�����x��c���`�(k�{/\"\"�{����7��Z��^�s����_�u��Q,߻x�l�x��m\\*�RY���e��[-����� ����T�ϭ�$_�x�2���vu˥�N<�i���������p#X{\0��+��\\��t�0G�gdx�?>r��E}�ߝ={������-m3��(^��s����8��c\'\0H��N�\rD�3�㌟=����\"�aTa4.���3I����@V��A+O��z�bQ���^`K)ͫ_�Z�R��5��z	��F\0���z��x��7���-�o�Ukס�c��	�gf�l�v6|7�x��fa�E���~�����T���\r舧�ݿ�9��N[Nz*%,��ے�ap��_����	hχ�g��?|����>;���u���o�7y��z���?�<�r��z��\\p�R179���!��_E�;��z4_�Ė�l�=�����Q襝,N��ߜ`�L�pݯ�[�V��V�\'?>C񱛯�/N|��;���k��(�\0q���\'O��^��ܑ�i�)p�Y����#O3˰\n�-.Y�Mc\nS�b������o�M\0����0���g�:����,Fz`�l��k���_w%��v���&����Ox�7F��\\×�z��o�\"�\0�lfR)���;\"e��f�Ci�E�n-|��a^���N�;����f\\���\0��7V�K�Rp&.��v�h�(7���]����?\"��=|�3w�u�>r���E|���;_�5;�Ͻ��4\Z\rb`]h	�Y���� 2�ڀrXD�,#M3�,#�2~����vl��u�Y�����_�B&&���S� d��C��A�HXb@��\r�A̠(b発�\Z�����6�>��݌}�����~��+w\\���l�����%/}?��Wr���l޶�.�NS�jJZ�H�3&n%��Y/V��I����i�8��GE�$�ep��g��s�iO�R<ܳ���F��H�������<�iJc�a�϶�;�_����e3��Ʌ��2�y�go����!V�1�q*K���s�{Z��Tfd��N���;9�{�|//��&��#�T��0�i�m�9�Ʊ{f��x�<8YB��a�0/��մ�:�׿7ϯ��D)E�1|\"du!@�Z�RLd)�<#4�����O\\Ś�>��ㅱ�E�r�2H��l!D�ő+D�B��bCT\"P\Z�I�wH��=)_�6ʫ��\\�h�;�$~��4?�k��]�A)>]\Z�f6ť�\n��&�XF��Ep\"�en�,\n�P`��𬨓��K�*��E�Y|�2����  4���ߜ8�O�a���l@�ϥ��7���G��@�����Qi��X|ޒ%�b$A)�U�HQ�Wv9�A�\"�ТKš���0++r�4%m?�4H|�+�a�*\0[��|��ؗ���7~��7��va��PeK�̆(F)x���������^���УDxdu��K8�ueA� QLHN��\\8W�D�Q��Ytd/�ɕ�ʶ\0���!����<�M�����U\\{��.���%��=G��d���o�Je�m�x�_��C�^�n���<ɉn��}�{H��~t_��#~�|�W~�>t	� �!Eb�\\6����NvE�ё��l����B��\0� N�.r�%q?��qnz�0��ｍ��<ˎ�<��	/��x���>�{!�޽T���;>��w|����� ���V��/�ض��ڐx�|����a��W�%��J���⊐N��Y^��u�{�2.�z�<BУV����4?����?݇�]�W�A�\rQ|>��;v��a	�x�Kws�;�����Ύ1��7r��\'���$}�a����\"���R���9Ǐ���:��5S|��K�KC�U�x�^�a\Zw����q?zr����Anˬ���傛(m��m ��_{���?�=�_��x)�q�|ïRs�.��%�S2P�d�	Yg�YQ\\Q�y�urԂ>.$i�yp����{�\n��v9r{��5��xV�_ǃl(W4��+���ۍ�%F3��Z�1�����V��}O�w�~�ʠa6w�k�B�n��z��de�������{y�E�R���ڞ��\Z���y�9~�$o*�q�3l*W�7v\n}��u�e�\\﹃��,��|�#��6����	�u�D��?!o�tfy�C��4�<�6�d�:��\"_A�!Ԛ�X�y\n�[4��e��B�/��g���ȅ�d���+�Պ����3�P��!\\+\'�{�s���Q����!w� +�lt/�-�N����4(*���3>\r��Tb����]�{9���-�^�}-~�(t`8��}��<����B2�hL��]!��ǁ�J�D�R,���K��Bd�^,��}(�֜Jelx��������J)�]�`��\"=��Br��}�\'������r[�Y\\�Q�/��º.�E�P/��r��1��Yp3��R�\\�{�$���*�*���Q�FR!o9Һ\'����B����/��\n\n����\"��E�@oVY*X�2Ȳ�P҆��4)%K���\0e�(?�\"�m2��qN?�\n�\\�\n�!��)�r���b�i!�x��\'A)���I�\n�q���dE��y�\nV�7HJ��wV�Cs��F�5K����n��[��\Z\'i�u���|�Q\Z�C4��\"�hHaK��]���7�4d��!wB�{E%g�B�gH������\\�<���\\�[�p�^Xf�2��������I?���BWW��S����5���Os��s��n�����2��&CFb����{)�4!�5��(��\"�y�h�\n�e �/vi���E 8�5A���l}MLp�&���qǚ�+2��ʰ!D/����<�`��oYE��#�}tv����6����QE.]����|�0R�a����Z���+d\r!�|l���sq^HR<��Rh��Y�d4�����RB�	�Ws�jgB������4�8u�g�r(�n�ga��s^\\3K��A���r�o-k��H7���}DW��#ghN$�1�() τ�K�Ѱ�_縆��`ш.\0vM���3T˙�2���E@��i/`ku!���V��~��-���צ\\��\ZʵȞ8��S��̙B�����#6��\Z�Nv��7�Gס����Wy���\\�k+�J�C)��b�[hCk:@�$�|[�~��Q�<�Ҝ�g���+��eg�����\ns�$ޓ/�i[�[˄�}��_���w֩�]J��9�}n����J��d�]5Jp�����%��D�\Z�����:O���C5��~6����[���d�	b�]���{���_��>t���I��.{��8�x��2O�<�y��\0�2�t��i�y�ݿ5i��6(�Tc���36��*��:J�����iO~j�|���&��`�\"Or��L�S�G�\Z�H�}g�����Q�2���ܯ���?f�Ƨ����,�QgӔ�y�ܓf�v��gR��x��±�R���;:�s�٤�gL=����ߝf��S���M��V���T��9Lgr��T�W�}Rxx��S��~�\\��c9��ٲ)��)��3|��g�����P�٢T���T.�y�G�Y�6�1���v��=:����&Ɋd`�\0E�=I��h\ng���(�N�K�9����~��wl$�;��;wS�3O���[�̷~��/m#ܺ�5ω�u��e�����y��,�㦫F�n[K���\'V�O����K�c9��݆�̹��6^2��H���&6`������!@s`~~�e��\0��4,Њ�҄J��%�H<���?�o�7L?V��<�c�-��s���pf�Ϳz��<��Gظ�F���}e7���I�j����~ܷZķ]C��3���G+��j����ய�wB�ZGk���˪��ti���t1�z�DҲ�\\s�OP5��ф�\Z�(4��%�� �U�>���v�\0���տ���\'�8`�H�d��r�H�\'ٗP�\r)���vd��K��5��GgjJi�\r�#㌾|3R���\'OQ��i��8ոɜ|�1�,��y\"5�R�%����;艨l5@��n�ҚHk�¨X�P���=��/5�\'��Xed8%�߮3�y5�٢����-������>;�K_q1jH��Wb.�ؒ\"^o�%�\Zlq�o���w\"Y;P��4L9�ǵ���	(kC�=�����2��߿��Ra66������\"`�����-<����&{j_���\'[t��C�e��id`�U/kr�}<�t��iضc=�����x�(O��|��)��֐LzNu�j@\\b�\0�<2��;�s�7`r/4]�T�,#��xj�\n��:��ʼ���W-)�\"���j��#y�p������Yu��m;��	B��Cu����E�5a��Q�h���	\"ϙ9g���=�.�1��12���9\\Ǔ�������ų&���~a�E��Dҡ�z/�hE�s�.������D��=�`Ϟ9��\"�I���C�5az|�e�c�����q�Z+��m�`d!C�4j�㲫#�9a͎�QӇ����\'��\'��b!��bG�!���4���2<+�����{���Ӌ�x�i�;tJ&X�]��I��꘨/��=`r��6Ze~�4��Y\\+G���p�y��=u�>3ϦV�k�\'��p���T��\n?㑮�s!!͋��\\��z����+�?�����6_��q��B�;�/Fl!�$���,�#Lv=��&�$%l*t�Ƀ�58q��&���2`�4���9WW�1�X���o4�mG�cQSR���1\'�t3�;�y�갨����� ]��f;�qdb����SG�JH�H8����ra�Y2��w��??���\Z��S�j�_z[wV�\"�)Kl-�RH\\	���,�^\\&�`����F���a\Z�(\\��9�}a��*�{��H�O�;�����ed��ۂT��<og9����	�jz�x�����\\2��q��y�&�]p�3\'���:}�5� `��-��鏡m=�+��w�r���8=P\"�pD��\n��\"Ed/bh�\"�b�/h�E�zǡ��&_�\0����������3��r#����t0I�w���XO/�;0�W��8�|�PO�8\n+���#|w�$\"�@jQL�\Z�Yt�@�h��n�S\n���wӅ��Գ�\0\0zIDAT���\0�\"�풵S���Ʌ�_�w8���r{�38�|�Ii�`&��\'_�b&�>F��,��QR/4���\\�R����Ȑ�^,�9��8���x��?<�b�@`�Z $��ˋ��O�����UBD;�T�Z�\"��5.� �ͧ=]T��Ϫ�~��,���/��\\�W�}����n�]W+���5�E���\r�jLn �I�C�I]N�9\\�h��4wŃ<b����A�\no��	�<.u����\\�t���8�q�����W��s��6Z�kw}�jd��)����֏�}x��Ԣ�����Ο%�Ch0�S	!2�L�����Z��m�M��m�f�f�C���b�f�b�s�g!�AŢ\"�,\'�f$���l��䔛�Jb���̑\'9I\'��IiwR:IJ.\"S0/�\"9�h�x�̱�Z�T(��&�`&k>�?M��M#�ТZљnQ� y�5��2Z.��+��sau�|&\Z\Z�($��؀-�o^��B���\r�kyā�J��3-B����0�{ұP�`�Ai�w۔ᒛ�s��9&}�R���d-��.T��Vט;W���@�R���P�j/�U�m�U��A�����\Z�q��\'B��2���D��LȠ�(�\0����*\n�`!�;e�rH��`��;�&k&�j�M�>Ͷ�	A��b���1�:�5y7er|���H�/R��|�r1�*Һ�}�j�\Ze\n\Z���侈v7:)�T�w�����\\J�3ʩ�Դ%T�b�t��W��{�\Z��T#F��\'\Zd����#O��?�d��)\"��R&\n����p��L���t�G�h�����~��g)�`Z�L�1�0��,��9R����B��%@��\r�i��R\"���	�(v���o*i��z̚5o��v�$I�={����3���A|������	���^E21�c_{�կ|>����ߢ!���*-���*�r��}Py0����Q��A�+��:i{��\'I!���Ddq���\"���ˮgT<E�-�M��M6�g�-�]+��_������>x�\0�1(c����>���m�MM1�0����\n�Uљ��S\nH��\'��P�\r	/�N�Щ�wPe!�1��7`+��Rx Da�=���~!����S����L?�k��xA�M7��N��U\0���U���?��GNB��\r:����+Ű�����iK�٬[<T�\Z*El��k��7YU)�;O\'ϱR��.q�=Ǧ���{��r.�$ݔF�ͩz�������r��nJ����8�E��������i�mf�.�.)�D��Q6mۄ��կz����w�Cy�����?y#�z�N��?�}��(�����>���%���BX�[�e�yN�Uk�S+�uq� 877O��h4�AD������˹�\\�@�ɜ�$@��][Ƽ���V��MUD�w]Npsx;Ϧr̫���Z����A(�6�����h\'4|�l�rĻ��)*\nj�8UE�dAG2/8U�Q�Z�tL��Bt��E��Am��9��\Z�Ηz�za[aH���Z��1%B���-���bV��h%	��ˌϱM����\\Nl,�2�ј �<e�;��p�?�{������ݻ�n��<�ɒ7+�l��\n\'ϧ��箝o�������]{��\"e1/|pϏ�~׮]���\'k\'�׆�R�J��6[���D���������\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(1234567890125,'Coca Cola',10,988,5,12,'2016-01-25',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0R\0\0\0R\0\0\0�,��\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0��+\0\0IDATx��{�U��?�Vu���L�SOH2�\n�aPuA� �E!\\y�du=�+t�J@u�&!1!H�)�!�\0�0��a��H�dz23�]�{��[U�=3��j�N~sj��֭[u����׽U�G���#{d�쑑!b8.�d�][[��ѣ���%���8�|���^\n��b�uQJ��Bk\r��\Z�5J)� �u]<����x��H)�,��\'�z�<<}���\"��ZDUM\rA&M�����&��G�y壔HY�W�����@����HJk��̵PZcY_��?�\'-��\'��||�<y�dRcF���Eh�՝���Q�pU@�4��\Z�2DD��hMZH�\0���\'�Jq�9�`��w��.���cmϱ���_��GrŜ�˲HY6BHj�ĵ,�v\n���ķ�Ok@c���4�hH\n�� -�)�m����N���3�S�N�S6c�餻�L���gͲ�K��F���z�$@ шp8!�B`I�%%ZR�@#\0s)�B -� ��y)%^o/\0��[@J������}���\r~��(��ƗJ!U�P��56nd����V\nKk���:\n(�Rh�2�m��B*���=��5����7����Y$���@1&��$��,=c��O(����=D�c��+���_߉t=��\"<�y�Ex.V��Ŋ�|険��c�.��c�]��g:�4�W�J#}Ӧ���3���Y����}퀔�T�*?@�J(�e�ys9��%<}�Y�Z��&ЕFiM�\"���f��l�\n�|��A�1F�{N�L�*�n��+�F��َ�[(����\"�q��q�����E\0��F�B�P�)���z�X��;�L�B�P��p\nE�b��q�\0�3���u��X$�/p�QGw&��Hado.wIo&cAia>�T\Z�|�L���sNw��K�}���	��Ӛr�L�1�}�Y�ַy�Ww0w��4y)���@X>\0�=�h�G�zp��ѽ��y.���w�\'��Had�\'G1�C!��B��b�z{r��� �e+�._J_O�g�w\0�v\Z}ݹx=e\n�Λk�M����/�p�y�9�����#��?�C_��BO��j�Z���oG�=�xu����GP�\'��X2%$i!H�-�-۸:�>���9u�:\n�nk]��ot���x�QL�w1��ױh|\0�Y�C.����SN�767XB��W9h�g@�V\Z+i,��K\nR*Y=���T�Ya�\'��\0^���0�u#��\0��z浵��~�\0\\�����u�?�\Z���[���z�F���O��S�w`)_���J8����[ʍ�(�����l��v�v��4�\0�n��W�Z31���\\Ƣ�Km�Rk\"�ff�(t�gꀐ۶���:�����4����/��˾˚�s����(�k�_Z�D0`^�ՁD��	�\0�W�Tr����\0�6��Nc���*�I�������\'���ŗ���\0懀-\Z_�)wށFsGft<|NG��HL�Xx�=�Jagy�C%�S\0e$\Z������M���\"��a�W]ͷ��@@���MK��-}\0\0Y�U�@�=�]��$1 +�J]Yy�$w���7�N��^J:2:�y�p_]\"L�E:rۆ\rX���Ia��b��Ԥ$1 �o[��N��u\0<|�Qq�r������Ү�45��\'�}g���Ѐ�<�̻��\Zh�v�޾w��˰$v\rk�\'�=�\0�[������EYq�;\'0�z`)L���G�T�9���\r�\r�@c��}=KH��MNU�@?r(���W��	�ͽ�r����;/�������r+\0�❴�)$²��M4-Zma%˙�hr�����3\0���_�o�+��4��5�Uf|\0�^�4wO�\'% -$���4L�&l[�:�v8��\0T�h?�����7���z\09�h^�����&ƝtR�`�I�0��=�_��}�y���\"�&б���ϣ��]#mۈL&v���a2�#\n�lkO:��_z!������G�ko��\0�x�O|���y�X��V���Y����_KHl)y��\'P�)���@k�ȏl�O������\Z?��h��xb����?������;)C&���#����MXR����>��FA��%�Dudt�*`�Q������C�㘛n\0!���?@HY�o6�j���\'�������V7�ih�������߲%f���q͜����g�c�/E\0뮹��~�CF54���\r�x��s���6sOB�hhK!c�[\n��\'|K�%,�N��nlʳ3��h��O8��5\Z/�����4|g<��\\K�n��~f-��W���\r�[��W_�ʆ�FFm�L�-��g�f.����\r�EA�a�u�SS��S�-`�+��SN��G֔��q���UW���+J?PlT�3jK���$�B�(����\r�������dW��&�\Z3/|��ˬ��\r�*�.�I��9�4�m�maUg�c�C;~�3�K�W6N���}�-֣�S����������[bk]�K)���ؗ����ʢ\\�$e�)�>��aX6��`yä��W;6�Րu��\ZY�՘��#n�!fw�%��Q�{��<T!����H/�+ci˸�g������o��������%u�,�k�`�\'ϙQ�F4����}V6�\r�N>73,�v�)��_)Ҕ�8��p�/nᾺFp~Ǧ��ʾ�6���CJ��bh��l�j�\Z)l���H�M�!O��Z�����ZW���eC��\Z�Z��v�A�����b�+�ּ�̳4^q9�QZ��h/Y�#=������zE% ǝu&��*��3�_�3�_	�ye�x�ar�N���*l~��\Z��ԬS���$)�\0)`#�U�-qˊ��r3So���L�9��Wo漣O��3�Ya��Y��\0��2���J��%��nl\\�%��<�;���9������C6��G7T������% u���P��Ȃ��&�\\��9�L�?��C0�T��[7�N�	F\n��}�#uQ�*	�G�r����Ym-<p����\\�쐑�0��My��в6JHF�\0-���H\'���Āԅ�JG۩!�؃at33�����]��vu���@�I�ȓq�p��wE;E.���V�\\�=�̖����ֲ�F�Y��\Z��hZ���f��eكt��mYܡ�}���{�\r��u7����k�_�O������Ȥ��;;��X��7���[rn{+��M<>s6\0f�ˤ��<���C�E�����/Pw���  (:���b����UWS��\0�����ёǮX6�L�zp�� ��~\\�ª�{wo{�$ ��������m-����e�C��Xӡ�ʔ6!af�>\0X�,��hK�Lc��\"�����j���jחIs}�O�VQ��1�\rَ�:\\�W��_,���1B�C����՞ٺ�Y��e�������\r}���2&y�dC�aYD������sC_rƫ/��yf~����@ �)F�-K:r(Cs�C���|i����9���s�[�\\���e��m�]C_���t��R�iلud\"��ڎ��`B�=w��i�9�U��քFce�$<����k����N������Ot���f�\Z���\r]�KB�ݒ��\0��ˁ�;�8�����̶j��8�_Ls}�Ĭ�D1�߿��z������R��u�m+�B���h�W|��V��(������p�������0�YC���uIžy���ƹs�r?�G�3�F�&�>2 ���[�#�>Y�Y�Y�|�������ϧ\\��vJ \Z e�XП�E���������z��0u���(�>�����ʬ�V�Λ=(L|���@Y�L��4���?�Ҷ�����a}<$���\0�\r�|y�+�>,4�����}��˜�Vd:��^����-D�F�R���D�Ҏ�����D�6�oz��Xs}S�=������Z3�5ff�ST��o�i�y�E#qh���U�?��ֵO��|��h�@��*Q}}�	J�@��rYS�|8��k����MC�g\\_k���%V6�U]������8��]`���Ldh�Xekr����V|��ށ�\Zp󞋄g������^�0� �b�ƿ�e�lxuȺZk�<K��xC��l^�-Ri���F�ew�_�.��M���_>�^�����ϯx`P��;�;�A��@��dY�H�n��y����ѵ4ͻ����O�?�L��\Z\rJ�=�����RHd8�.���F�*�V\Zd��d�A}��7���o\0���E�\n3Ľ�0�N���zI�I\'n�R��T�}�~�bL8�ga`)&Vz(&\\b\"�y��([��\0%���h��@	�TU�y4��о��:ѥ��k\r}}H�Ƴm�m�\'�6Q���t\niY��� @*e桕Nf2��EK��\n�\Z�FG�d����A>�mY�tJ)f��$\Z�$��O۴Q�:�js&�����s���&?�\r��B�����A\0Z���q̫g���錉f���!����?����b��GO�?������C����n�\0{�^gg�:�w�I[�f�����hi�\0�J�V(�a�)���6������:���ե~+u��&�\\�7��/&��H�����{ꩧ6k�����wޡ���q`�V����V��	���\"(��42[�߽a���j�\n�ۇ�,�._�=7��o5ʪ�{oq��3v�X2�۶mcժU�.[���M�H��$\r�j�)�tz���~����رc)\n�R)v��A?��ຮ1RR�8{���S,�}����d;v,�l�T*�R�B�@O�ɕ��lmoo�X�x�����)�����;��q�ƍ�:u�����l6�����]�t8�7�]��H�b��t\Z���g�~��%K�l���۟���=`3�\nt;�@\n �~�ư4K����fG��֎�,�&�J�D�� vx���q�m===o>�.P�@?Їr;����~�1b��,���y�p\Z^��1�5^�L��A�=7��>�P��<δ%-�d���땿��b	xY�xM=e�\n���C��?l2�@~���};P{d���j��E%�v\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(1234567890126,'Paq 1',40,1,20,0,'0000-00-00',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\05�ј\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0��o�d\0\0 \0IDATx���ם��nq�ա��j3���Q	K��،x�؁g`n�1�\r�4��	�G6�\Zz�\\!+q�;�:Rl��i5vb)d�;\Z�i�DΌ93���f���W��d�rj\\}c�r��{��{z~��.�}�f�ԏW���������\'�	|��\'�	|��\'�	|��\'�	|��\'�	|��_��MZ��P���D\Z:c?\"��7H��R�� ^0���\"����	r�}-ZK3p���F���i�sA}D���.��i��~M��Td\'�\r~��u�[��P�z*��=��\0P���D�?�u�$��B�V�I�\\j�ϕ��Ok%�?\\�k��^M��↴?������|\Zq;�\r���~�_\'4h������R\Z�$2�<\0���rd�@9qd���S>��P5��5�Bt=2\'\0ׁXҢɄ�=USx�E���������k�#e�R���bzn�N����\0k8�\\��IG�M������jE��/���R\ZAH��R�\0�h�C�T�s3P5US5��_QJ�:���#�d����Ik��O��<p\Z����+�O)J�L��#\nv�U9i�T�\0A,���(�2��\05{���R�Gf�E��)p�$���xW)�2PJ�<8�$1Il�UJ!\"�9\nE9I�ǈ��1��,���..�/��SP���S�̼�H\n����Yj�Px\n��(�$_\n{L�b�������A()��6�����ծjv\0��j��z�c&Qk���!I�ĉ9���(x���u�X�$�b�\'v[d�(��IQ5�`��Y����W;)�\nI\r�kW�\'�T��x>�9%u��������a��[��·̵j��r��|�HIM�|�2@Iy��Aοe�Б�B�:P��H\'.#��H�	�J���C9\n��\0RAD�`;��R�{�=C5,�$Q�ޭ\ru�2��Ѯ��T�[��=�C�6���P��@&���P��na����ߌQ����Nj�p�\ns��OS�P���Ĩ��7�\rl\'H\'EIJ��yƍ�*�vq�&��E����p��!�@�ơ�����n9()v𝒖K&%������t@�\\DL[�VvI����=�}�ģ\\K�z�C,{�@&��.�,���c��*���\\$��JRP�������x����5\"xJ�|xWkF�3{W���T\0v����_J^	�:�4HV\"W�I1`\n���؜iy�\"�J��s�)�R+�k��[�*+���B�*Ym�\\�[�8�E����\'���r5!��n�A��Nxh���X�fm�I����T �v�)����>��\\~o��k!��Rc��\n\0�5�6��t��⒙��Qp�dY��b>��qRP1����\\gb\'��8Ph�)�ZQW\n(�BQ(�p+��K��K���F\"��EQr��)۪��Sj�,%��xu���f\'B�r�����!�����{}�+��X�W��R��9�S=�A�k�@��\\��/D*���\n��>����\0v�LX9���K��Y}k��+�V�(�MV��P��^��(%�*޵~`n0�F\'%���W��}W�/18\0�7���j�+��~�{$�BDR�Ue%��j����M��&�;���#D���I��Q�d\n��Q�l�d�\n�YYd�Yn�I�r+өi+,Й�MB�IA�\n�Qh�p�na��1�+G���o� �}����B$���<{	�ms~~i`\0`x_c�е��5���h�@��^*��]2�W�B�ڈ�;q��*�\n��zyc���\"���<ŵe�J��ɂ\"Y����+eM\"��G��r�]پ�1)�������M�.�+�P��������	��J��(�$�{��v긺Բ�h�P�F���B:y+��ȇ����?��:6\Z�F������\nC	��+إ�(E�*�!ݲȘ��Mr�#b��)�c��c\r�9\"9n�ZnYc~\ru��;9R�e揻U�ue�\\Q+$n�AΦ�9ɝM��|p\0���+��=^�I�)�n7P5�t�T��^i\\KDRD�S^E�(-@JQ���\\0�b�t���؁�<f�+�[P��	dJcg,��B�3�!��T���We���jd$3H$H*%�f��oLi\",}�9ݦ�X�����|��B1d����P�D����\Z���\0������\'g�+k�+lO�;U���q��ڟz���V�]\ri\r���Ju?�^\\�2�wϟKnO�v�L�;1|d�1�ʑ�����k}������13�;�Bu��r �Ȍ|D���@�4.�����x9�@Ш��=U���\nU�)Y~�TXH�N���z\r�=P�H�P.��=��$�MIR��ݭ\">�5����|v����P�^���_\'�§�NE�c��:V�Y��k��	$-�{ف9\\�\n&�\'�Ϊ�R�H�!kɅ�����:+5�+�ڎ����Ji2)��\\!�5�[������1�^����I��ؘ7��l�uˠ0�)��{��W��;�R�u�a�1,\"u,e�R�iW��XN�����&eZ��c\r�x��ɠ0 V4�*Ũ�H�����z�I��zMΞJ�*�]\'?��DR�]1PR8{�蟥Vz�#Y���� ɤ���>���3�K\n]����`�p;���J���z,��V�CF�LHȩ��86��z�\'��-�e���)��jʨ��D��JwU$��wN��\0i#7�R��pμ���Q ��Ƈ(�)��H��e��J��D�_}�w�\n]û|=\\��,$���hR����l�J\"h�L3aJ	gE��$B;\n�F=�\\�V�Z��>ײ���Bw｛P:�)i\"E�R=���io\'�\\�����NUAs��/��ͷ���u��3�������\Z�/�{�d��q]FR�/�hٰ�S�pM�nQ�c(F0����˒����Z�	C�T�����Q%\0R$�U��Wj}۞� R��Yu��\n�Z�\'\\E��I\"�}W��8]�ꕳ�,�\nͱu��=�(���;������o�\\�����X7\'V��)�M�A����\n�]!Xv�)�m��NXY#���:gO\n�2XNۘE���2�>�����UH�o�:��{�6F�O�E��8� ����r��س�7v�S��\Z4�	z�_���w�U6��N`#��z��(�Q)�Am�ǋw��u��$I�� ��4_�U��q�.�Q�P�g*9���6��������(��X�u;����n�wאn�U��#��\n��yVڝ�\'Ӡ���s]ǰ�4�BƄ^JQ*E|wyf[\Z�Fc%��}�?1Qh�ѥ%.��6^	�O1���<�����l~�D���z��Ҵ����kqX�f�/`��ҧ��?3x��\'g8��&ҵ�Na؁q�n�i�y,T�fE�t�����k;��=^XK˸\0i����y(�Q���H&�45��Nb�3��@�;��>P�Kl7so��@�}�^;S\\���y����>|d�b���s꽅�����<��N��,?\0�2K��j�q���\n2��C7۩9��B�$��(��8su����:�f,���f	�YB��g3rYO�*P1\nV�7���bш�t�G0+�Z�U�����sJ%!�wZG�{�b�^��Q�ֵQy���*� ���	N�,��R?8ra���\r��(�-;���Pt�8��{A�x\n���8�(E��)f�83��KY�Ʉ!΄D�#����փ�������1,��)��H��$�PbU1�}�|�s���ĶQ�Y��b���N����9\0�w���F\'��������y5���r˯��@��Uv8���(8��܆�v���a�{1�~��o^��ߐ���x�o���`�����x��u����3~�	B�=?����������ٻ~�;����\r�m�MV�v [s�nQ���v�X��A�;q�s;����w���΀�8�3v�N��v���q��������\0��78xd�͢�v��0��!�����q�������շ�rw��W2��y�3v���m��/�mK�\"R���ײ߾�����l���Vܡ`�}A��ّ�upv��3�,���p���;��ň���f����0��*ޅ�~	��)~��{�/�}������!�2�����m�����3��C\'�p����u��b����m?y�9��~g)\Z��qۗ\n����.���߽���¿s>��ncE% ˟QA�v��vr%�v��s�\"⎲�yWw�����?���n\0V/�Od�.��eb��� Ӱ�?�����6]�s,�3�or�+k����$юb$7�%	�A9)���vGx�Z��wB�Z�~j	n@�&>��޺1j/e	�d	o��[�n�-���aC6���JpQ�h��A�֫�i�E�I\Z��AV��\0�e��q��3��^�����U�1�ꪀ_������z�?e��%3�W�Ĕҕ���6s�]䡯@�/��d1a�	�\'	��Y�j7`�Y�������\"��Z�^�	��������+��\"<�\"}\0�Z��WO#+m�\'��@{iE�r��c~�d��?���݁��p���yb������l�H����R�L�d�q�J[\n�`�^O�\"@�����ً1S{4���ѵ\Z�;��J�k-�^Xf�bL�x@|���As�	I�L�CxF��JL,)i�Pl����L�&AB*�2=B���\Z�>��G�8�#��;������TL��Ǖ�JX���\"^�u��C����n�HI&k��ĉ �R�r-Cڥi��%h�E�Q����A���q9�[�7�V��m�7Z-����Y�<g�kG��g$��	mII��8�?��@uVYU���}�k^�6\Z&�In;�(X�ʯ� ��1z���@?6N�w�0,\r��Hp����.�E�\0���T�\nݲ�B������3���z���H���^�������LH>K�Ӏ�ҝG�1H(6�p���n��0����K!���4��揋����!E�fy�\n�TY�&�_g�������d\'=߷�\'+}_��vw{��6�L��؆���lp��\'T<�8)ܮ��L�\Z�׿�tJ���L�Lhu��$��h%!�D�2!��;1��e�\Z��2�!�d�ie��D�r�*\Z��^�^���l\"��0dY���=�tTNt�D��g��vXY?�j|��&v�a��1�f�qIt$�a\'��3@s�-�0�d>\"��G��1C\'O�\\m���^S9�Ǘ���)	�f����m�\n\nCQS)��N4���jl6��9������f!_���,\"_�E8,	���v���I0��fB*^��&6���Vf>�s��dB/�Q�X�Xl�z���mk�XjDJ�eb�}[8��R�T�s?=D��#�N��Y;���GF��_i�N�ҝd@\'Af��?c��\'h�9���\Z-�#W/���;��VZn���70�f\\i_����ڮ�T@n��N M�+��E�׍FjS��\n�6�	��6�K� ̄0���O�(&��Gq4+IjӁ�Z��U�n-�c�\"�X�Vgt0��h&h���I�`d(�η�Z�����)R��Re-Ŗp�5ɏY|t��[g	�z��y\0�GǑJ;9���U:�<9��爯�J\rj���<9��k���.[�uj�X����ޢ�|9�Tد�wf�Yd��, �z|�q�t���g�����]���(K8�>p��zPo��n��L\nЋ5]0�%�P����[6A���t�n�60YS��$�^�ו����0��r,�*�9���HJ옅���������KAM۰ax�r���#�HV\"�M��_\0���\0jO�~V0��~{��g���/�,K_?�tbd5���8c�8=0@�7Xזּ��$��[0H��è�o�OI\"�Qd����%��I�/fW�7\Z�M)����>��|\Z5�w���\r ������d0�1\Z���mN\r��#Q�f��M��Y����͘��&\',b��Jy=���k\0���Nw�I�0�I̷��$���PR\"1���N��N��NęLX�J��h�G�TYi��5z�J+d��Oa���j�u_�\Z��kP��0/\r �k�+SL�?c�A���9��rlm��zH��ߨ\"\0J]�/��Fr�c�j69�ָJԼ�^�h6E������W�J@�o�p�Mx=,>�v�+�c�<ӉV�6�xM1��qN�r�苓]��)\Z=�\Z�xQ׋�8��,C�#�>\\��j�v.΃cv�4��v&��N�^ސ�8�I��D�HBDy,���0�����u�b�e�%���x��g�?>N�ӆ=����<��KL�)핰���:0Arͧ\'9��� |{��W?����\ZS7cRfG?���\ZC/�X�0���߱�o�N�����5<T���f�o��;E�.U��?�{￷��<4����Zk.�?Ǩ�\'��<q�ƃMN�<���K�KL}�KJ�x��j���6�_�fmm���G����jd(TZ\n��z��4%\n���8+��cc,�7���%޽8ϩ��9�$L[c�\"��$B����˙W�p��O��M�@�>�WO���#_?�\\i�j��7�#I�𗧐�a�Jk����t����=uf�0�����bbq��@���\ZZ�8 +f�����\\e�;ل��6�6gm��Y���L��ʙ��C5�����ϟ`���ű���y)i3���6�ހ��M�I��&���y��͈o�QGq�����i}z��[k���/���vk�(�Y�2�/ؾ\0OL���\\��f��\rF?;̱�c�Vʅ����4��y���Z(���{��A_P\nu�\\ÌE��S$7\"Zߙ!Mb��:3���lrlm�������$�Bp�ŵ5���j�s�#�40@�{��Gj�f�0������ �A$�^��{��I�*�lr-[S�ے���U�5BvK�L8�i\\�X�\Zamm\r��ZH�Z&.�������yI8�i���-VW��f���ޕ�ic��%�o������/�(�_g�n\"��K����_���s��I�|�d�I���Ԩ8�yn6��Rx��ӓ&�jU����8f)�$	g￷hi컯3�gH�=Xg��c��<��vz�S����]�����}�t6q&���>~M�i�*[!�S�e�گ7�˴�,�\n��ک�w�$��w�w��\n�W��������~�7��;/�px�P٫,���s��\0��WLj������.�������}c��k��=N������>HVB�_�f�Ѳ�ޙ����d�u��:s��`by	�@������O��2��)�|�=�=wܰ��8\\�}���:��J��u��3m5:I��B��#R&��EG6z�&g��,�	@��04<��t�j�g��`,���wd�>R�=	���wڒ��J���ޭk�h�s�L~�^�=��sV�kW�\ni�r����j��OO<}���ef�1����a�\\����ϒ\\M���\"s�?��%�z����0�l�䣯����\Z���B:	����}�[��v��;]f�C�k�\0cP�8��l�j���r(�j�����\r^؎�M��ԅ=�8��2x��qG�ӝ�+SC��;@��	SZ1�Ƅ1Ƚy��]�9ur��\'\'\0�}��o�/���z_���AD��4_.��?��@)���slm��o��^	����40���P�#|{���R-��1���1y�E��8K/O���1�n����S0E�˨����z!C��En\Z�T���w����U����}Il�]g�0ln��:�\r~����|�8��	�^�L�㏕F�Q����d�l��w7c�O7���u=Xg�KG����1�G/�\\�{f�1��`���{h�^P�:c�=_j�����u]cc�L��+{=\r�q�8�chm��n�\\�-W^a8t`�Q�$�&\\�v��e�W���i��GYx5@!���o�L�$�Q�r0�	��p=���ޡ�p�(�O1<۽1c�٣�5��9��z����_����\Z��L�z{���N3>�ɵ]7���]H����iU��9u}��q9�<�TJ��=oa�����M�6d2P��t(B<EX�U���J������̋0Z��w�C�a�u����]�\n��Fke�o0��c�v�l\0�B���{/dT��:E�L��7���@F�\0�(���r?��f�{Q�����,<w���hW,ύ\'���ښvWB����%�\0\0 \0IDAT�Ѷ�J)��,���?�ӣ�T�VswNs����-��HۉMH��R�3n�1=�K�������X�(5�4e�1�*{����4��Lͬ�Zc�f���.�=ޝ�#O`��c���@u�)�XZn1S��d���7@ ��ϼr����q!�X���Մֵ/�4#GH��|>J��f����46��P�߳y�^��v.|~����{F_;cL\"L-/�Xc�����N����`�ϰ��Qf��v�M)�z�\Z�H���S\\l�7xAw��g�ekh]	��񨣘���7�3�N��TM��k����̾y����r��Z`{����s\rMu\'���#f1�F�.�d0��$��^9��S��Y��2ʍ� �\\�[�}���J@)�M�`�˝���}�q��o�E�	ַ_	�+}w,�|1�&�;��ؖS#�k�q�l��\'�m�o��˘Ҵ��eJk�}��o�7\'3u�Wc��/p�O^���~N�:�v�>l��A���-����2�,�s���w��.?:�ص�\n��7CB��wK��(&	�?�m�]Mh�kt��IP\\��H��܁!T}s�@�}����ZG�\0�nF�h5<��HV\"������c���Z����u\\�\"�vO�����-EGS�A!�բ6�6��#�s\'m��΄3��VkXxv����{d��$!z ��Ӝ�>GW�ˎ�4�+2�4sb�s\'��L�LE��|^A��/��wL��&���3��\0f0�LLvl\'���\rwMG1����kRr֐�l�,��Ei�4I8=0@��#=w�+�$xd�����Sj��\'h}{��$��N\rz���N�G6�Hw��8\n�X\n!)G���ɋ�_��$4Ũ���z��M&�69�.���S��As���{w���q_�\"�N2!�`���ﰢi��a�E:���l���%�)�?�}�{�(��\\�ˌz�z�<�g9|q~]|R?�8B�gL��>�oMr��Hy�m���D$S�ƀ?�w��,a^T�����X%ӁQeBA���,�-&�G3ShIH2hab����T\n>ƚ�;���l	��}\Z�g�*Ȣp*�y�ݍpC����+�u`XFX�L�n���	E��.Uq i���5+����fɏ�j���4��$Y^\"|g�s�#��?G�#��L�S��m��jW ]ms������,U@̈́��ݞ\r�����D$�q��QZ�4Th�\Z��ۚ���mx5\0�835LhfBS\"��\"�]���X]qze��7Њ�\'�#>r%�E!j	�^Y���T�R�Ė>�}�i�����!q�,�q�����L4�n�dy	I#+m2�����Gh~�gwy�=et���ڙO�aBN��� �����/�X�������^c?���}�c�1����M}m�bm}H\n�N�l\\���+uLx�c���WJj�YO�j�=���n\n����<x��Q�o���i�)�����\\Y B��e���\n�mT�	I~�Ltq���f�+wCӁ\Z�\r��@Zo�����\\���ώ�dL�8����U�4I��l%Իī	~���a�6�w���\Zu�ّ�+m哨c��\"�i���/d��|^���Mھ�@���#�#C�=!Y��|o�H�s���@�h6\"�wga/��w��	���Ҁy~`��ߟ\"����G1��ˤ�CSN��`������J)�����(ߜe��cL݈�����AUsq���U+�����џ�X�\\y�i����?�y2��UA��s��D�|P�IJێb6I8U����?\\Ϟ�\ZԌ>�^������!����b+�G��p4u�V�m򮽰E4�H%䶼O����3 1��ϘA:	��}��2����.��ԂU�E���e�?^$�a����!·��{� 0��YF^>Ź������m�~nMAn\"�1�Y8�s�[��d�i��mQ��Ң�uDz���-(J�k�RDX\0$&\r�VY��A��ေ�Yԫ�`q�~H��уD�+�a��V%}�^�	�B_�׉i�r��j���4NN�@\n��d��SkkF%��3�����Fթv��Gh}k�\"Q\0�Ps���K/����Z�]�tW�T�ۣ������ \' JmJ.�o��WJN�z��]@o�QK�\"G!���L�\nIu�ܠ���8Ԛ���!Q[8u=�-U�J�RYT��T<���\rj�AM�I>i��Q�j�񝼳����S,=9I��I���z�k��}��$	ͧ\'IzԔ����ߟ$��q��ܠ�Ҳ;x�?9ٝ,b�����ힰ�~��x����r�M�C��0\na��T���ގ���4��k�sZ?�`4��N�;G�o�`�#N��/:�4�M�q���3F/�3�\Z1���B\'fty��{<��b�7ΰ�Og�mG�\r����E^��Qq������9~�\\|�����s/޾����T�&���x��~��(U�0v��9:�����#Y	��oo�ls�����͸o�m��\\��]��n{XՖ�1l�E�b].y�>�P�pJ�TU&,v�|xr�p��ȍ�w/�Ӏ���^��WB����wNi;���9+k-/�綥�G�$����1��)�e靷�r<��F[{�����^g���\rO���^Z�,e�	�O����\Z��a������%��Ƒv�eYVu���&L \\�2�~�DJNE1��1����5�C�]�G/KV������,���x��ܪ9�bm����=R�f��A���>ʆ]t�Hމ8��e�e�NE���(L��M�\\)��������}e��WOѼǨ���F����G>X�����ˆj�N�S\n���\"<%��9Z_;��w�1qi	���/N���=C{�z���#����/OuY��/N�eG���mG(�/��A�g*��l��m˒�g����7+;b�H )3pTj���83{�%3L���j����?Z*/n��z�%N|2�u��i�i8��mg�!c��|�F;��5MC��m�4��%��6�4˒0Qxk5�U\n]S4TI�\n���m�l���B�\"��WO�mtc�\'�w��!�ހ�S��.����b����g���_\r	��d�M�����fw{�Ac�tm]�ۇ���&dX�*��O�bj���)J$\"ƭ�$,��<~��7zܝQ�%�nj�3�N|ݮ�P��?��� $��g�����1+H�Q��Hl��f@����2����O1q��#��=©�%\Z/�>�9s�g~o]�3���f��F�w�knꞀ%���qr\Z��1�ʐ��o�%i�pskt�j͑K�	ߞ\'Z\\��)&o�\0�旎���\0s�{��7��H-��!c��Ơ���D����Y\'lo2�l��f�S@R1e��v����tI���}�\\�*��s(i��N�ܵ6�Y��m������F���:��=u�&x��$a��!�\Z��uf_>�[o��u�`�㏌Ѩ�:��\r��\' ��\"�:\\��<�ҷ���A!I��\'[��,Z)B.�q�Co�<y��$f���3G�����5E�a���|wL���?\'�Q��8o?�dts�����lM�\n�mGL��[����m�r\\rZ2�(�cW�OZ\'8=<�ĵ��J8�וƷ�hkC����?F#����棇i��D����Џ��^#�M�tq�8�k��\'&x�fLp���R㾦;�P�b����0�kk�����������7l}��#(������\'�9;0@�j��\'�/�p��N���i}{�`[UdՄ��!�ܪW��9���Y��-L���wa��	j՞���7���6�Jw��U�i�D�;��g\'��3�!��D?]f��i��3��QF��D9p�2��aS�������}�(�|��Թ�u�̹.�f�cGn�L\\�ܕX��~j���?�諧A)��q���o�1��E����HW¾�T]�1��}ġ!Q����gb�m([\n����5i�\0lR���ZR������I܍\0��D*�L�8�:p�ь:(o��wߡ���%��h��������x���.t	�@Yİ��z\Z�=Ӧ�FS��/AV#�^���hwP��.S���&Gu����YNN��%����WOq~`\0}_c�-ϗ��G�}�fD�d%d������/���T���Nb��Մ�����֧6\Z��T�+!�}���)�`3��pǕf��d��E\"Q�/�W��g�6��(�g骅�{_��V�ޔ�X�l����;�x4���3��K������8\\i�e���ןj�����V�T�^�N��\"����T�������y�w���Ͷ?U)r3�(��ЙI���!;�S�w�_�Afg�ߘ!��i��|�\\��S���A��9���=�f|y���i\'��pv�K���W�_?�����e{��%���l���s9)(�0�r\r���\"<�z�1nS�S#e��Դ�S�	G�)EPS���������F;x�4�����us.��t�Y0�{����g���?<���\Z��[ ]���,��g��b»��ȇ&;K�đu�FJ�~�J��9-(��/}W�M*Ti#�c�S�8��c��P����a�J��<���m����L�f��=��t��^wN�kp���Ż/ ���GY|�8r=d�S��W����JƓM����������-����~�A�]	����ΰFF���],e�Xĩa(�g~��C:sl;�6����|e\Z�^g�����u��crm���N`w������Yf�G�<�gSԤI�K����nVe�j<�H��Q�ue�-k�i�{+KҖ��5yզ>��?�y�9����\\��yd�-�H���Y��=�~\'z�%}��G�\"��9C��s̸.��~v��Q����A����OORh5�#��\r$gA�	�`mO?��J��3\Zs�E��H��i`�]�>l�t����VVE��w?�T���3�����;�vdÝ�?\\$K�ą����#,>7���g�\'�?;J�!c��h/.�B��!��%�vĻE	:)�n��t���m�c�emjЃ0�=i-ڮk�Ə���X�[忲��s�)޺�R{�mm؍���+���B� �\"�^�	�p	̞+G�,r�sU3�X��@>*�(����^8A��i���揌��D���@��Jˌn�g�zX�c��q�\'�M&�^�6�S$}�I{�X����\"��&��5\"U30��&U�޳Q�\\�+�Z�����	��R�##Hh���Z߫9��Ԍf����$��\ne��M�(�^��$+k�vw\\���Y��q�옭hGK���w���k-����0��1�@_�\0H~�H��Caz�����+�Y�k��Ζ��Ť�l�\"�E� S�U�7	��eI���ݛ�QL\Z�A��Y�Z�	��tt#,���2���V�Ѐ��|D���UV�1�H�<,v�:�T(�brh��c�ό �B�zs��#E�}���[(��a9�1�H`����~g����Q���H+�Ω`�MGПj��l�?7s������Â����Ƥ|�`\'O\0�G��T\0��p�P	X����bd��\Zu-�X��d.E���2�|Y ���#B�\r��\">�����Ө#�q�|�]V,꤀B�ذU����>K��N��wA*`��	�\ZF��|�l��w�.Q��s�䍔��[�B+�Ҭ�l�H��k�þҞά�;@\"�v�a�w����)��L�M��>�Jb^,��o^��\"I�jj��۰��HV4HK`��I��Zc���J���\'�D���[��:��U�v0�S�NL$B�Z����h�2��fd�L�m&��2�is�F�jL�\r]$)A�L���A�~�U�?��Q�wWtd�c%�\0���V�]��G���~P�75�����O�\"yG���6>\'�6�\Z�m�+�P�T`t\0�=\Z	���\"\n%�/��Ͻ�h%�J�v��Ä�$&�*l�r�aGX蘢�9X\\4�\0���hF=�2NR��!vnSDҢ�Z*	����*eJ��FoC�L6�&�q�퇕��[����T-֬<C����y���q��l&doj�|�޸ǶwMl�.\rx�%#�=�:IaU�KV0���V(�3pQ�\\�#$�@�@��]�8���\Z���@�$D\nv�U�\n%�LX��Wc��ma�*��)\'P\ZOy��«)p�2�2/�,B�1����$�$�I��x��,��h��J��~�utf�	���	_=��Os난U\\:�e߻�H�鶊lЍ�$W\ro��d\n��!��yCVڐjd%A��7BҎp��|��\"k��r��\r�@]��k#��~�6��h֡&�y�0&�0��6(�0���^I�*��<�o���P�����\Z�(c=V�D�ؼ�\")I�����z�ǳ�V����&�6�<2��p�Dk��)�c�|��5��LtT�+D\"_$r=�x�D-l����t�\Z9������H�꙯����\n�V@Aޛ7f�Ȳ3ymE���:h���`��ح ���!�L�E Brb�P���uXl^�a��a���b��T�P\"�Ɇ2T��Z�rR5�T�vs�h�Fl�$M�W²2��\n.����q���?�������	�M&����B��HnT�^�8ǉG�H;m����2��6�u��$et�-�ã��4�o��p�~����_�pk6�U�yr�����ɰ[��kڧ��6J)�\\�_��4�A\r>���A�\'G�U T]!�!`\n��耺O�y���I��XZ�U!�a��)�c|x�@y�6���ج$�\r�W#$�Nb�\n�I\\�E�d�\np�����WN�ٔ5g�L�xt�$I�T�T5�vuY�����8Ʌ��6���*��6A�m�-�qn�>PAU�D�9��f�0�-X��H�ݖ�t%�Am�J��1�@=�@>�A�1>�D�PP{Ѫ���GFJ��bj��.A�Q9\Z=��+�R�*\"\ZK�W\n�$�V�\"��l�*�ANU���A��|��&���\\��i�=�o�U��k!3�E��C�$aH�6�Gn&(�h]\\`⏧IV�����}�fl4&��� ���`d%�-�m����\0����V�*��Q�x����PI�)�{_�Rj��&_�V�p6��#���h<gYYj�~��`��t���D�Ғ���%]%*�l����4�gd��2�&�(��kBqGh��P�}�H\"]2�_@�4\Zνp��o����#�QT��2��{���Lm\\���߷���i1���R�͔�WO3���BК�G�z��gF���|z��硖��yk[,�N\\�P�ߛ��Y��=v��j4�(�F��Ʋ�|�6�@cH�����=KImu��LǙ���G$/C���E\0~X�qo)�+��j���¦�[�MVݔ�\n�q�Zĩ���R����*h˒&^>�w_�r~0e++M��L��>�������w��̡qp���������2e��v�䦭��5�\'�	�!�����A��/�>c������A~�^L1�\r&�Q6�|��P ��!)��f����loZ�f#D��&���O:)#��i_.��$KieF\nE���\0\\�}d=�QR\Zh�@kÆ,����Y[9���[\n�uF;��a4�s�:�g�G�r��M�	��9X�BV�.�D2����a��ѕ�}\ræ:	��&�,��u),�p��ΡQī	A>����|���+�eFuQ$���M��R�d�U5}g^�j�B�7FS�����[b�:�����;X��B��=�G WB.�#k�8�80��-���\\��x6�7���N���^�h��n_���r~=\0��-�Q�s�\nN]\\B�k%z{F�:��aC���\"\0L2���H�&YM�	����[$�v!7�A͉��\\Ѷ�f��SL�^(\nČ~a������.s��Ş�$�2\"4%|g�ڟL��Tl�׬\\��_l�{#�o�mdҼ�?L��YkT,������}\rT��Ou[�M�N�\Z�Z�j���� �!�#x��w# ��v��;\Z2#+밋vJ�Gl\rp���.Ҝb}ev�4\nW)����8�S��o��}�v�Pae~�s�9T���ɍ��&�ɍ��G�Y��,�K-�|s�$��!s��?L3c��!�j�o�0���R�ĒB3@0<Bp_�ThL�(�Hro��O��h�\0�OOr���@�\0\0 \0IDAT{3)�eJ8����V�k�e�O�g��~�M�*���ڭ��u3.�G[j�;l�W��i ]i�\"�	;I!���*��,��<�tbI�������X�,1eL��+p~�A�SÌq����y���9� ԃ��9d�0��j�@&DWC}�XA���=Xj�/G�(�W��M�.7��/����r�;S��wO���v��L4��,E��D��`�1��)�}��5�.�4/��%��VU�s��p{�(�+�Z�.w��{��y����䝆��s��f\n	���W/k�&q�E��4|�)ح%8�E�@�$E,%�ٌ�˱)��m�H> \'�Pľ\01(1$6�qC�Ё<T.iT*W�t7BEt�*�f\Z�e��sf�x�w���7��@�rwv~>�������?�>�:�H��,u��ZJ�uF)�I��t;$]��s�\'\'8�Ǚx�$g�������Y\\`�œ��4����K�$�\r���;��U��cG���u��RL��Xx�*�	�G�B��Wj�@����+�Ѭ�F��_u���p�>��C2��l�l9����j���X �S\r���$����f�Y�dk�y����t�7.TyU�a>���]���\0\ZBOG�ʷ4�l��_jѪ��N\'�s3&)Y�����\\�<y�����z���K��/0�8���ϒ�h=~������vRv���1n\'��6���5I�.F�`��Y9�՟#mD�1�P�$�+��eHpo��ո�H��a�AI�n�>���5��%�^�F���\\��N)��!Y�8}����Mq��35Iֹ3si$5�R=�Uϫ��:=�������n�Nb�/w���)����$Rur�(���K��X!�C&��45Wk	�[	�N�7Kz�=-�d\"�B�&�\n�ez���(!Xx�<K����UђǗ�~q�g��(gؠ��O���B �ڶ�F�A7Wp�3K)�9��dy�/����@�tqy�_E��j��s3uDډq)*G��R��S��nƴ�>�3&2��0(��hD�u*)A��do\r�\0���RU����1�v�$�K�\Z���Y��m,c\\]�T4�թVTCp�3L��8��	�m�N����1[���Qw�k�U����k�-��Qr#F��^�����\"�	HI42B҉N�<lj��էT�A���f.�s��,)��+�j#��u�����1�Ol!��1��̼5_Ws���	\r�����@�l����\r�oEJ)��圣ő�������p�\n��SW��vwɍOH�+�u;�H��-�+ :8�m���*_(F���kh����!��&�f�A��8�Մ�lMǺ���af=��9ɂ-w~�*�#�h=9��Ȝ��FZ=.���Bh��!PE�Q��ƭ[P�dj�A�,�9Y�p�ŗJ������^�ͥxd�g�ڰi���J�wy?�$�n��A���\"Up�	���������II���vJ8//�x(T�\'��5Q�ц{޾�P=p �_� �[I������`����\rm��\\Z��%�m��l�n�h�Z���~uT�Rj�����Gо��������hp����#�������9}�����\"\'-TY	\"v���\'ܧo\Z4D	����Ul=f�Rm\r��V�z�X�o�«���^V�\0�\Z=m{8b�3�v���M\"�:��=��t�\n ]�i�_R�!�z�?�$��I��\'�ጝt1��r%�������4g��,�rA|uyC� �$�j%M��I��#DCI����![|��\n�j��b��Y�}\Zr���e��G?¥��:��a�ܺ\n �Oi_[��vM�G�&���8.tt`�0H;ImՄ�5�{CR���Hג�}�;���M34!���\nɩG&@��9x�g������c�QW�ZZSM���Aʥ*h��[st�n�݈�@��y�����X/���#L�_`�\'��D	+$o;�R9��U��f*��l���j�̐��P[{6vv+զ��n�BmksK�of�ck\"���P���z��f�v\\�-�C-Rq{��L%r(,��҆��_9����qfy�t�W��z����Ί6��7�eʬZK�~�py��o0}�r���w�5hA��y���_y�Y��u��*��;=d��>����mm\n�3��N���k�R*�ra�=�@��9��Σl�Ѝ*6~��ٻU��0B\"�k�C_u�C���|�z����:Uٰ\0��<�<�����R7j�{�E]͌����=\"y����\n\r�`�?�9���TNn�m���-�U��of�@��hW�W��`�aK��j�ۏB��+l�󵭖�i`q��$�f6{�5�\0Pxa��I�U]UոmA5F�P�����`���m���:����ts���K��8��g��Gt@�(��h�OT)��\n�쉟����W����3L��L���)���^t���o��;\"�ٮ��R\n|�\\����C:�#��\\1lT�NZ^)զR�0�\\zŗ����^���9T�E&�3��#��Ѻ_�v�(=7!��\"�Q��6J��z�\r�\n�ml�\Z#)](dߗ��\\fZy{����\"̵�Tdq\\ϋQ924P�h,j_m�F�\\\n)9��	�=L`Pv+!:0R�drcc���S�/9ꪫh=qLϲ]n�>G���8�Y�!��VB66��6ʄD����\Z�ɭ\neR2��c_9^��&P*̽p\Zo��;�ȡ`S�:F�r���V90g+RiӃ!�_��l�Nچ={��l�q�-�F�K�&�@\n(��Dң2�$/e�٧O�w�6%H)E8hP�MV�7(��59��g�\'c,|g���{��U��de�U;O�����*�\'��x��cĖ�ެ$��*½M���fӊF�K�Q3B���Evi92��\Z�\'�\'娲��*�T��F[.��]�\"M�!#!�)�B���s�},�T	�%7��|��N	J�(���PG)���XV_\n!�1��9�yc��o�d�q��ƈ��\Zb�14�k�פ�:F���ୋɻ}2(=LW�$����q�/�-.�H�N�4��M��v�*@�	Y��G�L|���𽳌=<Nb����y�����ǀv~���������n\'�4#\'t*��p$�~��$W��UB_Z@�֌�ތ�I����~0W�lu\'ժ�J���8����Ar��3�y`�D�붓0�a�E�����:�Q]��횺���[ܠ0ڛc���$�����\0���>;Yg���C��\'`��|m��jTJ�1(I;	\'�J0�·N���y�^?��K,(ـ��}���}�M��7�W�e����nS����2�O��6H[�@�a|sc�\Z#[��Or��RD�\r��<x󰒛q-���,%W��p4������pwD|���e���Ų�XydIUVᄱɒ�r���j�-Vk	Y�6�||e;����G75�}$3�f�P���?̉��L�?���S�N����M,.�@���W�ZF�N_�~T�\'C�M��k��Q:�_K�-Sm70R��<I0�l��5�ِ\\��S�k��+�q_��*�\'���&q?׉ca�QT=�*t��ZER��d�cca��֊N��q�>Š�6��\nU(<���u��v�@ʞ�PY��}�՘��������{H�0����Z���J�{�]6�6�>�$���P��0�ǚ��_�M�>I���_�CM�tJ���DC��~��,���[��F=�\Z:~�I(+��>�u^�p��It�8n�6	�����Z�sV��\'&��sT��1M5�!ì��aW�\\L�Ĉ�C�y9����Z��[�,�v��{B�܌�:���/�`�k\'i�9�)c��7��Ͷs%�,�ِ���B/!%Ҥ�į�߸�3Y�������g.n���j��mm�>ߙT���+�Z��&*nVBt`_��m��#%\Z��[[�\0�A�B��������HHm}:0��8�o�g���>~�Ď>6^�L�D�Yw���(�\" ���z/\'�$t�tM���Wϱ��lM���b[ڊ!�����P���Fd��P�asWD�L�V��8�-�:�D\\^ҹ�Z�뽹�9�|-E���\0��e�jv�ML���Db��v�f�fJ��`|��a���u�D<#N�Z�sq�Vy]�d��JR�B��\n�ĨBӄs����C)�5�*^~}�T#y�#��������1�_��s�MZ�}�TH�[����<!��H�10|��ʥ�r1Y��|b����0���\"��nqo�d$W0l�y�����wM�ߕ��K����n�hw��\n�\'v	�����M�o-�ʎ-:�v�����\0�yLj�\\m�?b��s�Q߭\'U��zh����x�����-}r���n3��,K?8oT1�q:�ҥc����ݎ�*IB��;L���P���R\r�Z\Z�f��6Y��S��Y�	��$���i����x�ǔ&���M+wi#A����h���R�M�b�2�B��>=��[sU�T�G��jq�K�*�{GH��i>4�W�.�p�����{�N�Ud�h�m�]�6J�?L��d\"�Ť��ܵd�\'Cq��9����`e}��x��K����2c����A@z3\'Y�I^i#����b��#ė��/�N8�Ԁ�&� v�s��@Y@W�|f�@��:��u�5֭���񾁑F���xF�H^i��t��+{���\\W�V�Z�������㾔dI��:l�ߝ��J�5�V�����Wl�{}1�\0�TDAD�I��Gh�zd��OO�II�/���S(`�\ZL�Ð�Z��z)���.&��k�d�	�_:R�w\"�uS���2T��Ui*n�`O��xv����#Ћ�F�)LE�ms�70R3K��\ri�dK��\"�0�3]M����R�}�	�8��w��m�@hw3��&��Br%&�tt.vs��-E�B���ۭ͌< �]bR�-��FL~}��Wg�{�<��>ͱ/�}u��Z�^�1��o������2KWV8����uԚe�i11~����Z��d�=~�xq�p�(�Z���6�}���H��\\s9��\n�X�ixz�6\Z-��}Mm7��\"(�̅�:D����NgWY�		t����3�����z���C�T��%��j-!��R�L���}֙�+��lv�Dk��i^?���+�׉o�d�b�?z��o�d��$\Z�8}����8��Y��������G�TJ����e|x�s�����yf�y��v¹o��{\rv��Bq\nȤ�B�M���\'�\0�)�ݑN�/*�T����?���!�1���ǡ�(SUEIc������`H�=���yC���>.)L^���\Z�i��AKO��IW�z�yBn\"�/J�m��iu3��If���PZBtû<.\\Z��I�ʥ%�\' N�q�g�e���p��)��>n�0q���N}e���2/]�1�͘�C�����˥�iUl�Z+[нw�{m�%��Z�@�-�cѾ� �Ҕ�\0��Gڤ*\'1�qd��Qj�Sp���i�.u^?���gt>�ж��ur�f�oίu���5�6�?ԣaJ@%6ӛZ)�W-6����]Ҫ�m�B���`��q><�췞�L>9���&8��Y\0�4�R�\"I\"�1>��Z,�ɯ>w�>C���ġ5==ř?9E�`�Q�o,#ī�i�����R�s�۹ۖi��v%������G��ǎ\"����gy��Ӥ�o���M#�=U�Az���[�@�Z9A��*��SE���)�����l�ǯ�1qL��_��d�0�^8���\'��A0��)��1�߿��+gu�>ǿ9C|e	o`��sX�1ٍ��=!���99w`�8M����j�B0<0@($��1�0���/�\Z\0�a�����>\0��a����T���>ـ�A��_A?�n����R�\\�#O�ȓǶ������D�͘�K�s���e�Z���X[�ڂ!y�ѵ�Ɇ�8�N\\^x//&��hk0D(�T�s�d�BF����o�b���̿v��V��g��<����wI�d}���}��?{I3��R��KD���<�*�Ty���^u��݈:l���K�� �4!�aHd�wL����H��jZK*����t��/�������Z���0boT�� �D��]�9��g�t�5^�2�L�8�\Z���,������m���M�Ui�LT��F��������v8��gX|s��Qf0��:�u��f�����,g��2��T�>���>����\nUJ�q�B��9���Ӏ�-�D�c$��z�6h���{\r}�{$���>+z�ty�ѯM#�n:\r){{��GƑ��}�>2�3����7���)����/�͈�O�\"}	o����yA�3�0(��p`\08������y��\'P\n��ܤ�\0��\"9��p$��<���,�cc��諊��ڠ����PXw���/v��4�7Bu:,<u�rr\'��:/4)Lu��(�b�����j\r��R�v��e����I�%#eWۿ>��8��;���dW�D�H(j\r�>����\0�F�Ll�!��Y�S�W�jh���C�Q�M$����,�Պ�]S\n��G�.�m���>�ť�=�`�^�#Az����-\\~C�K���q�v����C`��9=M��;��!�l�e�>Da.��Un�#]�q��Q��.��\Z�N��n���� ���@9a��k�䪋�칡��? �ԏc��PDOl��ߌ+w}�y(�B���4)\'�Εe�:剸7���R��s�]���\']����L��*�n-�\\�{=\nB�7l\"��\Z�4n��{�n�q?�l���P��0�}������Zn�Ӫf9�S�TN��{5&x��QIJѹ����%�����3~L��U?�j\r�	�����4�ϱd�~��Z%IP��!L�X�\"b>�����	�\n�W�T��N�Q#�T(�B6��$S��xJ\0e�3�l���}s�iO�+�@)���\Z�IE&�f��}�ز���q�]:GK7c�Me��%�ُ��D�01,�z6V�Zif=>�]�R9����ĭ�+�F��_b;꼽L�I𺪪3�F����7㧶�G`t�ߙ{uNw��&���c�k��y������Jj�4�K5QS\'��k	���x��n[T�a�t�ƶ~��\Z�I9U�}\r�;�:|S?�7�$��+ U:�>���?%%Ᵽ��%Z]�\n��%K9�i�^�|.Tep=2�T���j�Y�3RW�@�����m�9�����M)wr��r����}��o�sk�o&+����R\"�t�\'7A��a��\r�O�c5S��*&�\0:�+�N�\\��O-��\ncĊ�(�u&�(<��=�д[Ȇ�5�8�I-iE��ŲS��_��̖Ԑᴛ�wS8r�so�3v;!,L~U��eΕp�J�8���H=+�`�Jl��!�T+(����k�1��k���XP��톸�y��S�N���\0x�#߈..Lך4`nM!��H���ڝ�\"<���d0�amS�eQވ:�%����/z�|�~ְ��/H�ǋ,Jk��~��f��Ea%Z���~n���Kw�RF�L�h��储��cZ+6(�d8ˌJ�k��}T�\nPk=�GA`<Z��]���7�P�e�<6QdB�A��ց��N?;�/���?��-��Xj����\Zـ^�����(��Q[�Ԁe\\���\\�*��Ku,0�<�JsUH�iC�\Zͮ2��h�TQ��y����j��������6�%����+�ķb�;	IW�n�DYJX@p���^O�;���*c+٪�ZcR��ѭ�U`\ntƮ��v����ϳ����hߌ��\rD�Dw�~v��B�0\\=0��av�.;e$��F�\"^�v��yBj#��2f�L��!�.����$K�� d����\n֭��5B�,݌/{\r=7M�x���f�Wi���6b�~��=c�p&	�I��.�*>���5!��;2�}�=���ʕ\"[��wd�B\r�nF�IIlv&u�tI����{	�g�7�0DJI��h\n�,#.r�>Q7Et���}���d������t9��Nr��*�����R�N����;��l-eiyy}yyi=Uj �2�\Z94F(�r��R����\0~�\\޻h�ݲ��V�O���3X���6�:�Q�����\Z\0>�R����W��xN]�wR��L7��Le�%�.�҉�*_�;�\0�Z�r��\\u_�������\0\0�IDAT�Tx��XW�b@	O3w��{#��4�C��u2^m� ���G0���?�ρ�����4����e��G�-\r����&��~WJ���|�̿��gcXB���1j���~���r0%U�:;��ŠN�G+���}R�*��d-!I�ߚ��ſX��%�7��\0~��L��C��#�rd�~���!�[c�}9���?�� ������Y��Uo���f�G�7*��E��m���P�ݜ�VL�Z���+�N�\Z�V]���Va��+4}$�~�d�hu��=h��1�Sh&�R�f�CbPx��2�����.!�]���ǅ%cy6�aԏCK	��*En��*��<�����N���Y��?�o�?ɲ,����}t�O���\Z��h�����|�H�\Z@3��f(��_?���<�|��L�.����n�g^�~��S=�w����_�6����P�;*Fx��o���L�f�w���5����~G^�G����\0s|�0��b�O8�UR�!���T\r�d���:s�S=���{��z]�C3�{hF�߽k���\\���\r��>����\ZT����y�1��2�@�ԁ���?���w���d?��̆����w����>b��܇��s޻�������{�o�\\P1����>ۺ����G1ү�z��f�����g��f��~�K��5���%\\I�\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,1,'1234567890124/1,1234567890125/1,1234567890123/1',0,1,0,0),(1234567890127,'Raw',18,100,12,0,'0000-00-00',1,0,0,NULL,1,1,1,0,'','',1,1,0,'',0,1,0,0),(1234567890128,'Unlimited',150,1,100,0,'0000-00-00',1,0,0,NULL,1,1,1,0,'','',1,0,0,'',0,1,1,0),(1234567890129,'Pretzel',20,100,10,0,'0000-00-00',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0R\0\0\0A\0\0\0Bn�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0��+\0\0fIDATx��y�\\U��?��S���ꮞ�I	$ D�Ƈ�h�u�{�W�	\rz��x/���� }N<�� \"��Q�B�&d�N:ݝ�����k�O�����j0 u��o��NUw�>{��7���킿������P�Ѻ����w(����8��=�F&1Ȧ�O���?qA�+����n9�@��z���?��[�aOd<2A��A��{��g�&QtI���v�>��K����x�H��p���܍����H�4d��]48!�y-�.��?}�tʦ��Y�T$�I��d��/����ˎ���1 �o��L�|V�\n,���̶U��>w�[�gr���\r��G��L�a�eYgV�`�9��v������iQ�D��\'?+��z4=O��L��9\Z9�}���ӛ��I���d$C�#%)�$�������Yf���,0+c<\"�<�r�Y�w��.}�����1_`׽�c�-$�\\t	[W�b`\\����-�\n���\n��2g��A�\\�q�YIF�p�ų90����6>��f3�\\�cfc�����V\'j��/>w��}X;,���6�Y�#�|���IB[^�P���W\"0w&;�a��r@&/p֛(B�Cx�9`u�dq� �JL�O�����]�������?Ʋ�.��.1�:�3��@w?n�I��՘��hn��������n�l��\r/�\\|��~؀,�>�+?vw�g7�~�?�����s��^���X�f#�	ɂ���D�@AJ�5C9-hv*O{F��e��Z��E��1C\0*63�c��~���O��x��̳$D;���wx�ų�]���v��{�3�X�16�����f��*wo���#w;�c$v>�#g��N���4�Έ�k�F˂��%��oPJf�T)�C�]����瞵��\\s9�:h���p�Kb�\'\0��sM��>ifҰ�2��vI(l�Am�1��2�\0C&�\ru��k#���Ԟu��A\n��=*tz{���Ӑ�?�Oze&r&[o?��G\0�J���f�K���^%�|�J@[]�\'��?m`u��g/!3:��s�*�01&yv38�L#^�~��7��������>���Eu�X���祵8Z%��W��?�R�^��\'T�\nK��\"\"���L�ǉN�8���r��EZi���v�~s( ��FYz�j��N؇g�R���Ⱥ�df�-\ne��9*��*����&P��R.i8Xz�s���+�D�(8u����g��7�3�Ol�6��񇏜L�-�II*D�:��� �%�fѷ��U����}}1,�d��c�?c8_���!a�*�R>����7Ļ73��ͮ�E0��}EH�x p�Zvy 	L���4��7]۹�<b�w��}��\\���?qA�(�	8��~�K\'��\'D\nN�|h=IS0QT(J�HZ�T��A���`0�CW�D�5gϘIl�F$������E���V�C����x|>��F9Y����ܤ�|JA�zɯ_����\n��\n�1 �_����FƊ�?�Ϳ��ٗ�bZ@�@/B9���;��K?�0{�\Z ���!�d�d�^��U��L��V(\rG�hAA>oQ���4sZT�	�a9q�\n�U��_\rHm�M�e�Y�3�Eo��W������@FF+�E��)@F�q`��M��j���7��]����:Y<WǨw�����N`4f����<�K!U�,A4�V�׃ֆ{w���,���=�#���y���`�����	�Mw��DR�r�@#i�ȡ�iR�!��I��1��9\\u�9���Y C�>���Y8�����F����F��Q�{��.��8��dώ=�}�v�2���B�(q��餹��$��A`\0�~H��ݓ���3OF��t��G��J4�T���sÚ�8UI�G��8�����,{V>E�	�0����;O!�m{CI\"	O����k��y�f�>&��w(�z��ؿ��F��$V}�h?č�s�\"��QR\nf^�n\n���X��Ekw�$�U��~pUg&����1�_����]���{�Yz��l�3�vxH���\r-��������b���w��O�?}6>_�Ȯ�q���T�L�P+��\\��&��������ĵ���5��KL���1}��8ʎG	%�i�%\'_r۷G1-F&�\n��ئ\"R4���`K.��ʟ��H2k�b�Y��n�1�7:�K��fi&�z�>h ӯ����?�l ��;�6t�Mn�P\'�.�����1.�͔�	\'��`�?}&�p(�@b�*���s�\'�}�i�d��{P�\n/��M�Yk0���#@����\0�@/��#�@!��Ď�4w����Z�u\r��Y2\0\Z\0�Q2\r=0��:Ptr���Y��&���k��&�z1?����Jcۭ�\nV�N����;S���^���h[>���B��e��	�$��@B��\'��W�{�L�{�AM0��gh=��`�hRr��\n�-�T@<z@�gO?>8���x����O� A����M��y�(6#���;F�k�����$*0�G�ɔ����|�������E\"\'�Z�Ld+�	j*U�X��[��Ff�\\�ր��D	CZ���/�?\ZHSm�lfQ<r��E)WƯ;��\"�;t&�2A�KO`�`h\n��`�\0���97w.\"�Iff��ቫ]0��4/��i�K�+>w!]@�Vc���}�@&�R5k$s�X�W�	�(��d¤%�#�@C\0�4�Qr�=_AQ\\�\'����}����B*խ��2��}�N:�͐\"`P�3ZK�nh\n&)t=k�b`W�suv�wi�q���\\�����}�x�\"o^e�9�T��[r��b�>�9W������Q\\��d��,�����9h g��#J�ЫO�6���\0`I<>�D_j�1��I��ɕ�YR��i&��Q/�v\'��c��zBcEr����Z�ezg޺�\Z`�V�\n⟅0�錒%]�X�i�p���}��4�T��U�Yi�Z�\Z�ɾq\Z;�g�7�#-�BV�+H���OW�ƾ��U(y3S$�����P�O�\0��ӌ���x#���DYP��)����f��Aa�=�L�8��*���37ӵ)O�+X�bر��f����؟4��Pѽq��]�U�0��-PL�C2V�T;�I2�VU�y�u�-��όu�b5}��%3�c�⤜�lڦ�k�Өj=3��L�b�����\Z��x�-	+�}�ZN�(����c�L�Dn��s��o8k{����9h �q_�� 3������DsA:\rwn2�c3���t��?a����ӌB���w�-����9�M2�ơk(c]M�*)Pc�T�P����{�&l��GvCv7���e��NƳ�u:�|j�|t�MY8�y7�V��A=(P]��z�#��.+(ʷ4\0Y�:���A���xi5�l�9縘�)px%��Es��s���֘Ԙ��*�Ƅ���vf�J�/#�=L�W!Q�h�����#o#S�Er�Ɉ��N<NR��I\\\rjj�F&\\��$�-7�\\���IL��t2E�0�Z�eɍw��A^*�S>��r;���\rG5���@�,Jn\0��A\n!i�%�HJ�����@�9h �N��D\n%�a�d�L�$A\n�Y���/U�~U.q\'�X�WYt�g�$���LӺ��k�\'y9�q�ki��A8Ub��yj�q�:W���@����Ո���&c��4N��3Z���H�t:q����އ*T�T�K�\\Y�:�*����9^5�984��%:N���c��mY���K01��ٮ��mOX�@N�I�Q\\�c���G)3�Q�p�`^��Rx|�*&b�K%�l��48�urR��,RYؓ�ج��u��xұ���\\�x�fB+o���+�����v�n�KK���c&g�h8�<4{���s)��\0�/J~�5��*��cr��D����\Z��1��h�?��Dz\"G��.���.�Wi�ߩ��R\r��${�o�zܼ��{1�/��ȵ��y�)\Z�t�����[�=���L�\"Ț&�T������G.��(PL��?�b��!�J�+4���G���-0�j�l� �x���B{�]7e0U;��A���/�2K�\0��C/�ĸ1�����D�(ʪ��%itM����H�RA@��ո�ϖ���\\z�&���$c���$�*Q��ȟ�b�����Uu��4��m�U�x?�-,S�ukȬA�7_M�˷\\���1����kY����@Ȣwg���n��5���ް�,J��Y��*:u�:��]UÝ2�D\0#7z|<4�|N }��B6\'�%�\0;�S��m���䠁l�\r�4Ț^�u�M�����fվ�e&o�²[�b�ɼ��;��f+�\Z�� �{݌�$u���c8%���м��!c\0����Մu+��e���Ԯ���y���gp���S���Z>��aZ��S� ( �\n=?�2�����~�bJS�w�<�x?��;�}�E,Y�)�a�2֍�1|���L}�,&,X��-��,�B@v&�Ż����w��:ɴ �s���+������\"�B��k9h ���u�MA<	��i���3�_�K���2�5��Ǿ�^����r�����b�/�g &�\\P����O0�V�9\';���\n�2�,�9��ɔ$�;����+�E�������!��A�1I>\Zg$l�����S�T�iP�W2��R^��]cټI��Sn	\",Ф�2��]$�/�~���>�8��Q�ޱ������ �2Pu����\'I�����x��c�	\Z��bp��,\r�^&f*�;M={; \0���u�ɟ�}���9=�t(��G����Ĝ��q�?~��_�����,�_��ʡ�\"���3�\\!K*f<�#\'\rFv�Z����ķ�Z��FG�u�\\���ǉ�b�|�?��i\n\'}��M��	~��ywђ]�K>�A���s~��F��ũ߸�\nh>l =��~��_[��;��nDK&É\0.W�_��o=5�XM���Xy���yC�k�NŲE	<01�ܸgt�5�6\\�J6�`rW?�:�s�`p�ȼE:�,�s�2mӡ`b\0\"�4��%���Ϡ3 ��\"��(��uׁ� 6�^l ����-�e�=��\'�m��ʨ:�l|�Fs�n��>K-�~@rȕ�\rM(��~�BBA�$&M�I�\'�2����o�d�y�r��~�V�L��;@�PF=�v�P�1(���*�6մ����>�н/Ц��j1���G�4����:6�~l0��V%o�Yx�bq��p�r��3��[�M�\'m��J�Ù4�c�ag����9,@μp�������.��΁���D�I�����4ٞ�f��`�(=��D4����!�מ}��P�� ۙ���ڛP�cY\\�$w�rz\'7�}	��E<g��B/�g�����2#���;w�3X��/��y\\��&x��9l6�y�q�T9�����[{���\nɮ�ȤL��p�N�+���ed_\"-���s��4�BC\rm������\r:%{����k�Ӷ#�蕳;ι�ѝ86�9fv�4I��a��\0͕�E+ ���˶�G.�t�/\r\ZJ͝�hÌ��Y\\���)j�\ni�8�a)}��c�H��[�p�B�`�a<�`44ȓ7\\��J�(qh�������(�I;+։u�6��@��g��fGa�1�f+i�B�>\'9C�*�ꅎob�t=�t\0~��򒕝���h|����I�ތN<4�%w<�4w��o�XIm�1Yi����Ր_���*�U��3�1\\�M������O¸\"HY6��E!�e+A?l}a�ٝ�yj��Ͳ��6����[6��-��\"��ɛ2\n���E-�OcǓ-�S>Z����|}��x6�ct�%x>�c9=����$��\Z[���j�P���G΃@�[6)�����%����-_%�9i�$,X��O�Pb\"\r�ct�[�џQ�U�W�����7�~�\n�\\���:�5�t�ZH�P_�����\0X綉������y����\n�X���]�\Z�����&W��\r��m�V}D+׃��}pG�:�O\\��~E��&�\r�Y��Pi���l�HV0�S2��ٸ\r�:Zn?^ɚ\'{x�P��*?���0Iz�?an��3��� �	�pR�O:9ŗ��[����׉a���x�ɍ$Ix<�d���*�����Ζ	ܴf�>j����[�v��l�\"Vְ�UU\'�iUȢI�(��hP��3��cR��?�s��5�����_���t�h<��B.�X����ܭ�x�g	��#�c&�ԫb�sM�N���b#��of����B�P)��|��W��(��Y�Mk��7�RNV�P��r$���;�E&�3�u(��5�E(��X,Q����ER�:Rc��F��U�=��v�[��k��$��_\\̬�+�k�W���f{q�iE���b�?�\'�Qwٷ�]T��U��+5�w�,h+������Ǯ=\Zƶ���j���;�PWMM�JAJ�8��$�x�F���N�lZ%����\n�R���6�ڛc޹�4�w27����z�6�.��N���^G��D{y�H>���\"3�ŧ�ّRȖ5\\V	�>޻��B\"nܵ%�(6h�k�0��w�M�Nr$�k`pB�Z�����HJ��O�:Oeϫ&^7��	�Y�h�q�x/\'ὀԓג��hT\'�� ���)-6L(��à8T4M���:�,���\r�[FKr6�Cت�.<\rq@��p��/H��G���cֶ��N���&�&E)p�	&��(��s��vٻݢ��!_��4bo�0�Q���\"�(c\n��E�P��A�!]����Nn9�D�$�;Ȕ֏���*{\'9j�i���:�c�=�W,���BA��Q2f5�DL��\n�˾{;��+��1�l��P��\n&�����7M�:{F^� j9B;#�n�p�Z=�����x�j����	dU�ت^m̀~R{�N�&���H}{�PC��՗(n^Ƀ�h�,C)��)�8$NUaC�ؑ*�860������jq�^l&f9̿J��\0�z�jbЊ\r�t�UJ�Z��E���3�-u�3�>�>RP�����.��GEƱY����ĩ�k��rU�37~l`;���c�����jsR��Im�Z�[-@�c��[����V@V�_=�\r�\\�F���،m��Zpb�T���X�?��U���,�S�:\"?4���RU��[��\r4�Z�\n��҂��U��T���F���oM���x��U�څ��\0�	�c3/�\r�X�z@�\'�2�5��|���}f*�:�s�*�5��q�[�dju�[�/����2������U�G��5E\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0);
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock_corrections`
--

LOCK TABLES `stock_corrections` WRITE;
/*!40000 ALTER TABLE `stock_corrections` DISABLE KEYS */;
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
INSERT INTO `transactionitems` VALUES (5,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nacho',0,1,'',0,NULL,0),(5,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(5,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0),(6,1,1234567890124,2,0,'Pc',10,20,0,40,'Doritos Nacho',0,1,'',0,NULL,0),(6,2,1234567890125,2,0,'Pc',5,10,0,20,'Coca Cola',0,1,'',0,NULL,0),(6,3,1234567890123,2,0,'Pc',5,10,0,20,'Herashey bar',0,1,'',0,NULL,0),(6,4,1234567890126,1,0,'Pc',20,40,0,40,'Paq 1|  1   Doritos Nacho|  1   Coca Cola|  1   Herashey bar',0,1,'',1,NULL,0),(7,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nacho',0,1,'',0,NULL,0),(7,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(7,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0),(11,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nacho',0,1,'',0,NULL,0),(11,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(11,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0),(11,4,1234567890126,1,0,'Pc',20,40,0,40,'Paq 1|  1   Doritos Nacho|  1   Coca Cola|  1   Herashey bar',0,1,'',1,NULL,0),(20,1,1234567890124,2,0,'Pc',10,20,0,40,'Doritos Nacho',0,1,'',0,NULL,0),(20,2,1234567890125,2,0,'Pc',5,10,0,20,'Coca Cola',0,1,'',0,NULL,0),(20,3,1234567890123,2,0,'Pc',5,10,0,20,'Herashey bar',0,1,'',0,NULL,0),(20,4,1234567890126,1,0,'Pc',20,40,0,40,'Paq 1|  1   Doritos Nacho|  1   Coca Cola|  1   Herashey bar',0,1,'',1,NULL,0),(33,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nachos cheese',0,1,'',0,NULL,0),(33,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(33,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0),(33,4,1234567890126,1,0,'Pc',20,40,0,40,'Paq 1|  1   Doritos Nachos cheese|  1   Coca Cola|  1   Herashey bar',0,1,'',1,NULL,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,2,500,'2016-01-16','09:28:00',0,0,1,7708704,2,1,'-NA-',100,'1234567890123/100',0,0,0,'-NA-',0,0,1,'',0,0),(2,1,2,10000,'2016-01-16','09:29:00',0,0,1,1970730888,2,1,'-NA-',1000,'1234567890124/1000',0,0,0,'-NA-',0,0,1,'',0,0),(3,1,2,5000,'2016-01-16','09:30:00',0,0,1,7708704,2,1,'-NA-',1000,'1234567890125/1000',0,0,0,'-NA-',0,0,1,'',0,0),(4,1,2,20,'2016-01-16','09:34:00',0,0,1,7708704,2,1,'-NA-',1,'1234567890126/1',0,0,0,'-NA-',0,0,1,'',0,0),(5,1,1,40,'2016-01-18','21:52:00',40,0,1,1,2,1,'',3,'1234567890124/1,1234567890125/1,1234567890123/1',0,0,0,'',20,1,1,NULL,3,0),(6,1,1,120,'2016-01-18','21:52:00',120,0,1,1,2,1,'',7,'1234567890124/2,1234567890125/2,1234567890123/2,1234567890126/1',0,0,0,'',60,1,1,NULL,3,0),(7,1,1,40,'2016-01-18','21:53:00',40,0,1,1,2,1,'',3,'1234567890124/1,1234567890125/1,1234567890123/1',0,0,0,'',20,1,1,NULL,3,0),(9,1,1,10,'2016-01-19','13:38:00',0,0,1,16424376,1,1,'NA',1,'1234567890123/1',0,0,0,'NA',5,1,1,NULL,4,2.1301104714e-314),(11,1,1,80,'2016-01-20','12:39:00',80,0,1,1,2,1,'',4,'1234567890124/1,1234567890125/1,1234567890123/1,1234567890126/1',0,0,0,'',40,1,1,NULL,7,0),(20,1,1,120,'2016-01-21','13:47:00',120,0,1,1,2,1,'',7,'1234567890124/2,1234567890125/2,1234567890123/2,1234567890126/1',0,0,0,'',60,1,1,NULL,15,0),(22,1,2,1200,'2016-01-21','13:56:00',0,0,1,0,2,1,'-NA-',100,'1234567890127/100',0,0,0,'-NA-',0,0,1,'',0,0),(35,1,2,2000,'2016-01-25','20:22:00',0,0,1,0,2,1,'-NA-',20,'1234567890130/20',0,0,0,'-NA-',0,0,1,'',0,160),(33,1,1,80,'2016-01-25','13:08:00',80,0,1,1,2,1,'',4,'1234567890124/1,1234567890125/1,1234567890123/1,1234567890126/1',0,0,0,'',40,1,1,NULL,24,0),(31,1,2,1000,'2016-01-24','21:40:00',0,0,1,0,2,1,'-NA-',100,'1234567890129/100',0,0,0,'-NA-',0,0,1,'',0,0);
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
INSERT INTO `users` VALUES (1,'admin','C07B1E799DC80B95060391DDF92B3C7EF6EECDCB','h60VK','Administrator',NULL,NULL,NULL,2,NULL);
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

-- Dump completed on 2016-01-25 20:26:25
