-- MySQL dump 10.13  Distrib 5.5.46, for debian-linux-gnu (armv7l)
--
-- Host: localhost    Database: iotposdb
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `balances`
--

LOCK TABLES `balances` WRITE;
/*!40000 ALTER TABLE `balances` DISABLE KEYS */;
INSERT INTO `balances` VALUES (1,'2016-01-16 09:18:35','2016-01-16 09:18:35',1,'admin',0,0,0,0,0,'',1,'',0),(2,'2016-01-16 09:34:55','2016-01-16 09:34:55',1,'admin',0,0,0,0,0,'',1,'',0),(3,'2016-01-18 21:51:59','2016-01-18 21:53:57',1,'admin',100,200,0,300,0,'5,6,7',1,NULL,1),(4,'2016-01-19 13:38:41','2016-01-19 13:38:42',1,'admin',100,0,0,100,0,'',1,NULL,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,1,'2016-01-16','09:28','[SQUEEZE] Purchase #1 - 100 x Herashey bar (1234567890123)'),(2,1,'2016-01-16','09:29','[SQUEEZE] Purchase #2 - 1000 x Doritos Nacho (1234567890124)'),(3,1,'2016-01-16','09:30','[SQUEEZE] Purchase #3 - 1000 x Coca Cola (1234567890125)'),(4,1,'2016-01-16','09:34','[SQUEEZE] Purchase #4 - 1 x Paq 1 (1234567890126)'),(5,1,'2016-01-18','21:51','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1'),(6,1,'2016-01-19','13:38','[ IOTPOS ] Operaciones iniciadas por Administrator en terminal 1');
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `measures`
--

LOCK TABLES `measures` WRITE;
/*!40000 ALTER TABLE `measures` DISABLE KEYS */;
INSERT INTO `measures` VALUES (1,'Pc');
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
INSERT INTO `products` VALUES (1234567890123,'Herashey bar',10,95,5,5,'2016-01-18',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0H\0\0\05�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0�7\�˭\0\0hIDATx�\�}h$\�}\�?*kx&(e�d.�7u\�\�\�Ku \�\�4\'��I\�!Z,\�\�&\�>\Z\�\�49ٍqW��-�p���\�u F\�rF2؜\�s{�`#\�j]rdLs0\�\�n;x@�㙙��ս\�\�\�\�\�\�>;o\�w~/\�\�oF0�\00�\00�\00�\00�\0}\�\��g��_�@��/\�%l�L6�ӗ9\��c#�\�Eq׸��}\�B��_\�\�\�>�A_�6@��.\��E6ד�\nl]\�FJ����#���C\�@�D?�\�V�%���&H�6ғ؞T�^���>ڸ5�8\\��)!>g 2	�!n˃\�h\\\�ƖK:Y\�u ���n>n�W����:�2	�AN 0,\���p%\�s���\�ｽ/\0=�\�\�=>\��\����\�#\0- \r�HB�\�(\����\�\��$R�H���m�\�I\�Q�G�1\�Y�\0\\$z��\�\�\��-O��X�\�\�@�$\�)\�σ\�\�L��@9������Kۖ[\��VHJ��\�`��\��a`\�:\"�ҡ\�2C�&!�&�\��>�XW�\�\n��C\n�e�\\�� /�\�Ѕ�\�B@\�\�)�8m�����H)��5BP\�\r\�	\\)�\�\�X�̞\\\�\�\0Â�\�\n��q% t4\�2=��\�c�\�(\�\�c`�\�U�1\�a@$-��\"Q�<�\0�)\�WJ���,M\�\'N�t\�E�!p�H$=�\�iT�^@�\�\��\�t�c�\�\\6-g��u�aӓl:xR�׌�[�u\�q�����\�L\����8B��\�@�\'וG���x����<�{#_`�\�\��q\Z/\�1�\�ܙ\�p�\�LU͌���\�J*���l���+$\�s9p��Ye\�H�O��\��V� \�eyDNP\�	DN\�\�u�a�\��\�`\�X\�\�xq\��8$�ҝ\�MOQ���\�\�\�ڒ�\�\Z�\'ñ�\'\�X��Ez��\�\�\�\�-�ٟt\�1\�\nP��0?_�ס2]a��q%�ܝ$OfМZ]\�\�\�\�\�N[\�J�\�8!���F\�ꀲ^��!y�+h���B]�\�(\\d<�oKt=�l;\�:#\"(\�X\�_��\�<\0\��e)/\�\�=�}J?\�ĺU��C\�\�\�Qˣ!\�s�°� ��\��G*��R\��)\�\�8�r?�\�\Z;]G=��ř*�\')\�/�\�Q1�\�\�IE\"]\�e\�\�cD\�\�sT\�\�\�m�Xf�ت��f쳋Dx�S\�D\"S�CĂ�\\$\�%�n\�\�\�\�\��\�8H\�b#YÙr`���,\�s�TH\�\"_h}�z��Ӷ�%\Z\�L�\�v���DR�\�\��d���\�R��d|��\�\�7�\0\�\n��v,cw�c�\�L�J�o5\�<����j�\�\�\�\�G�8V�\�{+��\�~w�\����\�o\�~�\�\�\�\�;c���\�\�\�_�<�O{\�u�\'\��8bW��\�m*5f\� ��<�\�`^4��ĕ.\02��\�_�J�2��e�\�Ir$\�\'�\�$FވY�`�\�J�Ejo,�@99�\�t�\�%*Ot�\�\�[\r\Z/֙[]	\�k\�\�\�����r�g������\�6c;6�n�\�}�%\�^s��\�*\�v+T\�4@X@S:���P�\�o�[�}�7=\�nh�kХ\�}_�lwǦ�;S	}���Ȝ��\"�\�V)�\�v�\�\�lYX-�֎�Ӷ�\�N[�\�Eb���t�\�\�\�EfO/1��BmUM�ܙe&�7Ka_AeTQ+\"%s�8ٝT\��Nb�j+�����\"Id\�4\�@�\Z�_-\�>�H��+\�r�\�H&\��\�\�>>��\�v0\�}�\�\��l#��\�2䆡\'\�2��=5��&\Z`;Ͷ�\�|\�)}\' �-�|X0�@�\���v�\�J0�\�Y\�\�,3��,F>BϏ$\�\�n/=���\��\�c˲Ɖ��&v� B�e�o�\�ƎNO��\���\�Uv\��\�\�\�D�e\�̭��~+=bNt\���!��k3P��\"�y\�đǑa0@\�jL�`�ڙ:�\�e\�\�,�\�S7;4�cw�23�\� M\�I��\�\�Rj��똗\��K\�\�qR\�\�[�\�\�y�ҋ\�\�F��鲣\�{O�s\�J_,mIm-��\��\�\�^�\�G_V\�\Z��]Q��B�븸\�U\��\�vsP\�\�-�6\Zq[Nˊ�w�\�, �.\�\'_��m\��k+�`��\�\��g�~�\�\�JlY��\�\�~�H\�\�c����\�\�@�\�\�X��z:�6܉��w�\"\�\�\�\�I�q�\�j&���Hx�=�\r\�\�ġ!�Yo4zF,�Y�l�4Zz��ɓL|G�8�kL\"q���ɸ�\0V;N�H��\�VI㕸�8pw��\�)�PzWd�Ǐ\��l\�\�2b1;A|�\��D)�;��p\�מ\\$��\�R\�\�\Z�IGƈ�\��p�n��\n: ���\��U�g\�*�q�_)���*~5��\�%OH����\n,�� ��d\�q�_�\��⥧H�:�n �,\�̲8Yeif��\�Օƕ \�|��C�\�Lo��_��\�%+sH\�M&�43��N��e\�Ф\"4���@\���Z�\�\��\�\�u�g\����\�\�\�b\�A\�⢘8\�%h,�[M\�`\�S�N��%\�\�3qe{�̊�E�5\�z+�\�ɝ41\�3\�r\�;YJ!\�B)!#\�\�KF	^W�y3�e���Rϩ���C&%ո\����=Dψ��st/REE\�\��\����x\�(@*\�q}U<�����\�+\�_�\�F\�+\�Kw̞Z\�\�b�ټ���m\�m��\�;�\�\��cq�\ZjT\�~�l|�.���\��\���^f\�*k\'c\�\�L%V*\�\�\�KϏq=\�maK��G/{0ׁ�K�^úd��v\�b\�\��ٞl�  \� ��ʺ�\�\�5������R\�5\���\�Ϟ\\\����\�~�[�1\�V3t\�b��sq\�$\nI\�l�[��Y1���H+p\�듊D��0\�ӊ\�7�ĵa]vw\�7=��+~��{�@Py|>ی�@�y\�l\�\�HQ\�	7r\��2�7��||NmO�g]��#BeN��j<>JZ�\�\�\�R�\�q�%���07\"�?aV+.��<vY\�!�}ָ�H\ZX%�;�e�II!B�~\�=%V4p\�\�h9P[�ZC�\�[�\0ڰ�P:[6��a%�~�q�\�\�T�b��\�\�\��<�\n�53\�k�Z\�\"ɐ���:΄N%�K\�V<Vʊ�\\V\�\'\�֛��I�\n��辚�e{��߰\Z?�.6\�\�T\�D\�U{��*�<�����M1�&��r�\�\�XO\�՟,\�&P\�Jh>���\��f�<#�X�n�x\�\"gAC`;�}��$f+}_D\�\�\�L>R��6��Z}�ZMX\�j	�\�\�\�C��;�\n}��`3Q�#\�%�\�(Wh&DT��E��xi�pG)\�5-N\�-WP �/�u�\�>���i떅V��\�`���jk\�̞ZJ�[~\�Ǫ\0�n+\�E��iY=\'V\�t�|\�����\�@:!.�\\v!!X��<\�EU�L)\�ߞJ�\�/jϯ�\rKI�g�Q�Hg{\�}��u*ߧ�3�/\�t_\�v|��g�\�Ƌqd�,���S/a\�V�|���:��$�\���˂ǃ8�\�U\�A诛>!\�d�\�,\�T�L��:�:Pn![;j^ht��\�ѐt3\Z��\�\��\�c5\\\�s�J�7\�_\��\�y\�X��a�N��X:R\�\\\�xuŷ\�p�\���VX9��i⊜��u\�\�u��\�j!OB\'�:�A�P����z,; \�\Z�\�W.9\�uA�{3�����e�o\�	\�HEPbrv:RD \�6�Ci��H+e(\�f�x\�h\�x��;0\Z�,�t�\�\�L�fD:��\�\�\�\\XB�q\�\�\0�\��o�Fҩ�����Ԃ\"х�\�\�\"\�\\���|�\�DRr\0h����ĺ��sR\��W˙�D\n\��>�.��F\�͊䔥�;�\�%��.�4\�l�\�h\0͏b5����s�J�\�vT\\��#��\�\�	��\�\�\�\'��A|\�\�(��\��\rz\0��LX���)\�6��ZX0�/�H�z�ù\�KQ�l�ՑX\\$�\��\�R?z�\�s�Ժ�\Z�G\�\�\�E(�/s\�\�u\�\�L!���\\u�����n\�}�\�.s��h������:n\�y\\\�	\'l�\�TN\�	���\'\���\�[�\�x�\�`\�ťTKL�Pr�\�!Q\�3KGja��^�?��\Z\�^� �Rf��\�a�HJ�紞J}ֱ\�P�@KY�(�,�\�\�8��.��G\�W�x\�(\��\�k\�qM:�RA�뒅�\���K��+\�yJ�_�W\����\�eI�\�B*�\�Wƨ>��ء	\\��\�Qu�\�\�\�?=���\����X�>\�\�K�eb䋈6�\�J����*4~�h\��%7�\�.��\�3\�\n\��U\�|��E˃ʓ�X\�\�Ǖ\'0\�3C�~�\���\�D�B�we\��p\�8Y\�jYJ\�h\'/LeeÊGj:��X�w�NC��)r\�S�\�$�}{Z\�R#�+��I�\�+1���o�°@�%\�;�l��EC�>,�aqF�c�\�5�޴\�\��Z,\��SK4l��g9�kSo�3�aU�:��n���\'i�;\�ƫ\��\�ͼ:%�e�\�\�#��\�\�2���\��p#7\0�{y�\�!\�\�\�\�2gOr��c���\Z�G\�X�V\"i\�\�\�,NV����̳�~Ռ�$Ⱦ��JݙD��w\�Wǃ\�\'�Sa}\�U\�\�\�*B\�9닟�\�YX]�\"X��D\�L�\�w7UMu�\�\�e���g��\n�S/���>D\��[��\�n\�\Z\�W�\�W\�\�x.�=,VPo�k0q�\���X�4\�^���V\�\�\�8�\�\�\�I�\�\�D�\"v��\�\�5j\'\Zb\�7����*��\�,=1��\�M$\�~�\�!�\�\'\��\�WC\�x�4�g)\�ۻi1\�ǩ\�\�wl*\'\�ga|����Nsck�I\�Ii�(N\�RO�\�O��#�ߛ;\�\�.���\�M\�\ncd\�\�\�2T�e�\��Y�y��\�\�[l�ru�rk�S��&�zc��t\�\�?���\�\�]6\�5\�*�c���<�a����\��Lt}ץ���\�Nk�Ǟ^`��Y\�\'��jR��wk�k��w7\�S�5؏\�8\�:�b\�%�\�l�k�#\�<(\�^D�\�y���\�\�_\\�	\�}y>V	��O*�c$\�(\Z�\��7�����\0W�7jo�a�\�V\�\�\�\�l]\�@7k//��ܳ@\�\�\�e2\�9��\�\�-C,��g~R\�\�w]槫��`��U�.�s~\�F:F#_H�\�w\�N\��\0\�Yu�K$\�D<ů�D�\��8S=�$�E.s�u\�yp\�\n%�\�uz��)��\"\Z\�qT��\�\� \�\"�>z�\�\����0�_zl�\�g�TҐ70m�\�\�}���)WW���@t��&\�wm\����=C\�\�\�C\�S\�£\rH��\�]��%+���\�T�\�-\�o�\�iь��PW�\�+<}ׅ�n�l$\�H�RNC��iwz��W0\\\�u)i���Ӡ\\(�p�%�N̓\�\����Y��\�6l�)�\��SK<{�\��mʷH���u!$�\�c�\�DEty\��)�S�C��(�B�\"b�[�n��\�#�68�}�\�,\�\n\�h\�lryHc�7\�L|�r!�\�w]\r���Z-\�\�w��}e9#��n.+x�,I�么|�/+\�߶<�/���\'\�^��\�\n,���^� \�͡v��﫵XՇk����\����\�=Cgm�	��6R�\�1\��@!\�4\���EH��e�p\�5���� R����_ĺ( բ\�O������k/qdY;HZ�`\�ik\�-���`\�\�-\�˨\�S}l�͍@_�w�l�\�^c�\�	D\�FG:s\�4��\"˺A#}7Q�����\\}!��XOI�I\�z\��\�̺�\��4y�Py\�~~A���dY	\�Xȿs\�_�\�z�~\�\r�\r\"��\�o�\�@�J\n\�gY�<QM�[\�e}\�\�=�E�AY*��L=YU�\�5l,�@Q�9@\�\r\�5N!�1J\�?�\�@*P��\�KcX\�u$nNbJ\'$R40�Z �X\�Ŗ\'�,\��H�o\�*�\�O\"b\�Q2������\�3:�\��v�J\�I��>�S\��}�X*%W�0*ؖ.\�mG\��p�\Z!\�M�\�\\�v3\�6\�ût$\�>?}X�%\�uH5�\'}�KǍ\��E\���\�\�}*�0�\00�\00�\00�\00�\0D� (`�WS\0\0\0\0IEND�B`�',1,1,1,0,'chocolate','',1,0,0,'',0,1,0,0),(1234567890124,'Doritos Nacho',20,995,10,5,'2016-01-18',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0h\0\0\0�\0\0\02�\�\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0 \0IDATx�\��\\\�}\��\��y\���\��\����ے\r��R�j�z�\��\�zY��&a�Y���T\\\�Һ�0�]:YT\�M$���e4�d ^\�\�~ZD)i�.�Z�n\�z^ˇ\�i�\�{V�\�~C�\�?ιw\�̛\��$\�\��%��f\�\�s\����~\����y`\�\��0�s��J_��D\nW8\�\��\�ݷ�\n{�\�>\�Y\��晴Y�2T��ßAu` \�xP4|� �=��I\�S_a�t\Z�\�,�J���\r@B\"PR����D�R�+\�v���|����\"	I� \�T\�}��^�\0|	\�&��IFu\�\rF\�\�P\�.�F��A�\�^u��;�\�$� -�:G9,\��5Ty\��\�_(�IKR�`\�6 A�C\"�x%Ilʻc|��kO�\���{�>���do���\��\�\�޹&aj��>|\�\�R\�NA�\n�|�\�ֺS\"�F@U��HMD!O��\�Z-t�\�x�m	꫾4,c©׉N��1*\�$&	c3\��҃�2�\�H�=&<KZ	�H`��\ZC��#.\0\�$�ݺ_\�}T-\�6O��z\�\�\�\�/NÄF1�cՇ��\�d<IЍ\" }\n�A\�h	\�BJ��7\Z�\�i�\�\r�Ml\n�\�z$�h�\�QF�+\�\�\� �BFi�5�ؖ�<��8�w\�\�\"Dd,Q�(��5q\0\�\0f̄\�]^�c�Fµ\0�W����>3r\�\0bA\�C`�$2PI\��Ȟ��v�\�Z�W\�\�\�e#�1B\�N�VpG9,A� I蔻\��C�`�\��r�$-�\�KŹ�*(�<\�\�$���,I»\�\�UtP����Y:%\�21Pi\��\0^)y��W�]�ϩ\�\�[E�\�R���ȽZ�\�57�\�%��$JD1(Hfu�\����\�\�\�\�9i;�R5h*# ��R]��r\��ڞg�ֲ&߹�#�eI\�zYD\�aT1Z��%:T\�\nY�:�`A�X\�\��}\�v��;J-\����\�|�\�\0_R\�~d�S\����ȍP-\nܵ`�\n�Q\�$%J�8k%Xk�)	P�-�Tz\�Cƪj��u�\�ϰm���Z�a�ꃄؖ�\�\�2	�YA�C\�U(6r���52�D�&s5쪴d�@>\�\�\�\��o=��\��ހ�z\ZCY7>������Ki%\���fږU\����yM(�\�\�BD�a\�I����\�I$��_Z�����\�*\��b�Ix\Z�\�Q�(��u�����fl�\\�ͪ��g6HX\�\�\"�W����Y@�$tuPW\��Jӧ	ޚP�\�f\0\�\�`p��B\�\Z:it�BJi4v\\P�u[��\�q�ujb\�tb�~=�h?͘k�T\�\�T�\�	A\�*Ɓt\n\�^J\�1���q��\Z)	P\�\�	\�V� q�	A[��� ��r\�\��Q\�=\0�[2Zz�0	Bq3\'��\�k\�iT\�y�\�$A��\�񽒨\�\�f �\re���O�~H\r���i�l-:����KZ\�\�#�\Z�6)�^\�SK�	\�\�\�`�&�5��@mk\��Ҷ%\�v\�=.د\�\�V�\�W\�C \�\�	%�uHd\�\�r\�GW�r�R\"5r��hM�Y*�\�ߩ=\�$~V�\�(\�+)��7\��L\�\�j)<\�\�#%�S�܆\Z4[�D�\�\�\�e\�8Pa\�N4q@�ό�k����j\�Ԩ��}�\�LA���\�\�r_\�fp�v�\�۫:�/%1\��=Lq3G�GRF��\�\�\�\����*�\�\�)o\�4֪�\rnV CɽT|?��������H#Qs\�\�\�*5$�u{\�\�S\�nN����6�c�Zy_]$T`�\�\�C����\�JE�\���x�I���3p�[9��*yc��l\�<��[�B\�JI;\�(�;\�q�\�J�W:>j~�\�\�B�\�Ѝ�\�\"�Sٞ8[ڏ#HJ.f7$� �\�\�h�Gg%�mO�\�ȠI\�s��J\�q\�-Kz0�c\�\0`^j���HT�!��s��\"x�S\�\�`[�\�C�vX\�i	ٽ)6\�BT\\��-\�\�e\�PU�Y\�N\�	1A%\��\�⩙�	!�&�\�\�\�\�Az	�u��$ܫZ\"� 6���\�V�\�x�\��(U5�Q}gƺ1؆f��4\�m��1\�U\�:t5KՐJ���\���\�*�����J�bPࢊ�\��\��\�y\��#&v�?\�ѬB�^��6\�5�\r򐴒��\�v!bV����fU|�SM�F\�T�^I�z�m���\Zcd�	\�)I���Qx--{C\�l\�8%d�Jh\�k��H������$H:&^#&��7�l�㽊0u*�~���.�����\"\�8�ߝ\�\nC�dQ�yh�W\�Z�5�ZP\�(H?�R�\�˱��\"�%5���B��\�h\0\�p�D�����=?\�\�N%��=\r\�S1Q*�&����K\�)V\�J*�\\1EC\�Oz��[e(\�OU�A=���AO��P�\�8@��R@tr����V/�Ntge����\r�`\�:*\��uAd\�ە\r\n�/\�q\� Tԗ��	˔�$�o�\�\�()\�|�p�K\�\�Id�\�c\�2���\��Q�n�\��q�n�\�\�Ċ��$iӝ�\�\�hE\�e\�d���\�h�\�4\�\�`_蹡�뉮9\���1�\�\\\�T�\\��5 \�T\�d5�\0|\�iS�ģ\��n1͸i�sՊ@�\�+\�O\�[ٚY�*�S��؎gBmM��dn��R�Z�+\�\�`C�2\����?f\�\�\0���ϫ[&&\�N\Z63#{\�FH[�,����\�0qT	O\r	Պ\�?���+#	g�\�$Q\n�42I\�5\�\�D�r\�ǆy�\�B�!\�zj���_\�يD3I�I\�0�\�1!�|���\�\�\�i�\Z}T�.�8WP��� E\\\�\�^���Ԑ\��r-�� \�4\"om����o�W��2PHBǏ�1I�n�B��K�К\�\r\�p�\�>��(Md\�s=\rI�\�d�\Z����\�c\�_T��L�\�A�\�\'��\�\�qW�1X%��S�x�s��+~_�=YK�6	���\�\��`���\�j <Sq��d�3��\�/y\�$��$S%�i�o�\�RKT2��&���Yj��\�3����)\��g��\�q�0S\�A7Jʈ\�\\��\�\�\�]&��ֿp��\��\�z�\�ek*`X�J\�T�i\�\�\�\�iK8�^pR�U9��.I\�*G%IH\�X❽!�|OD��Aw#Ĭk*\���\�iMd���\��Y�I¦��T�_�f�%\"���m-\Z1\��B\��qJ����\�f\�8	\�bYu\�\rKJ\�\�\�o\����|t�\�=��\�ZI0�v\�\�\��9�6F��\\\�X�8%{�)O\0I�\\�#\�\�(Q��p膆 ���jW�L\��3�|3�\�z��9�2��ax^\�\�\r�k`E\�\�\r��\�~�;c�FP\�^Vnh��\�!a<�t\�xe\�\�)��L8\�b=A�\��B櫸 $C\'����ʳ,+��8Fd��ۓf:�W�W{��\�3i/&\�}�\�j��\�ەU��\�\�\rǷf-;\�\r\��\�l\�C̀��@��4\�\����s�\�=	\�\�o�76=\�5�3W�i�y�s\���9\����ǽ3\�\�#��Ϥ}�3ϊ��(\���.���\�\�7\�����~\�v���M^w\��wJ�\���\��C�\�\�\�V�\�\��m�=��\�o6?7^T��\�ɗi\Z�M��#\�9`.�hL���00o��?\�̣�w\�3\�0�t\�>w��/v$\�\�M��_y��sВ$t i\��з\�\�{\�\�\�o\Z�\�q�X��~\�\�Ϯ\�z��\��\�>�\�\n+wLp46\�5}<��\��f�Ab~3�_i��<	\r���\��V�6\r�\�mma&\�vL�3\�\�\�\��4��3�Ϗ��M�\�~�g\�\�@�\�O	�t�\�o�\�\�Gn[��r��}<sbCAG\�\�[ZM!C�T(���4b\�\�ٖ\��A\�\�j>~\�\�?��\�N~-缂:�p&f�ӘP�{��9ۀ\�n\�^�IH��$a��\�*oj|�n�����d��6\�B�my�XH\�\�\�A#`b���w\�\�*�\"\�\�P9����?���\��\�Y�,\�\� -K\�Ϡ��!\�\�HF�$�Ʌ굣\����if��^�P\�\�\��4>W1XT\�el?�`����?\��\�?�|V\��?b\�0O\�ǹ�C��5\�\�\��\�\���}\��M(\�\��?\��=Z�\�\�߆?�\�{z����\����\�\�q➄\��C\�\0�{V7=\�7��@\�$s3>��Z@�\���a@�6=$��\�7A>$�����w�s0o�\�\�+��a\�\�\��fy\�w�h��ӏٱ6�\�vg�.4���wWe�+\�4fl\�:\0kr\�S�w\�ns\�c)��\�W�tPN����)\�\��}\��\��3\�\�n�:\�R39�g�\��k���\�\�}3g��\�\�\�\�h���~�$�	\����k�?�\��\�Î��ͺ\�ii���:�\�Tu\\P\�\�k\�Mq���C\�\�jA\��ѯ]�poʩ�)\�&rpg��<Jg55�^&\�\"b�Dl\�\�S]�\�=~\�\�\�K\�\�e��\Z\�iٜ\�?��ά>\�(AO\�\�/���4b�\�\�\�⺫\�<\0�\�\�Et*\���,�s]v��\��ZloQ�\�\"��xKN��\�W�\�$�c�``9~\�$���v\�	\�\����@��F\�DJ�\"���\�\�\Z�pgVS;JP�V�u\r��sP�N���W\�3��\��q0T��\�YH�\�3\��\�W��~!��@��\�\�\�<\�3^y��BȽ\�\�\�\���}�\� ���UB�.��\�3����vK��\�^\�H�D;�\�\�B\��Iϥ$�W)T\�\�3\�����m�[������]���\�6ˏ���3�\�<\�&\�\�ΫrT,G�\�S5�Um��{7�jj|mU�>�]x9NJ��m�ǟ�6\�\��܅\r\�\�u\�|�\�j&�tAЍq\\\�4���?��e<�\�!K:\�!o�\������ӿ�<s(��P6�rϫbExE=B�\�5RB[�\��	\�\���v���8\r\�r����W����n\�\�5F=�E,\�H�������(�\��b��8�\�XU��u\0�EXQ\�\��\0�\�I+|zc=�m�:\����\�l\�m%����\�z\�\�5H\�\�q\�j�*I��e\���9\�9\�i�\�|p��\�3lL�\�z\�?}��w� �{\n�{\n��U\��%�W�w�>-�J�\�@�?�\�r\�\�D,\�\0�\�\�.A�ck���yfAxva��XQ媇�*+uuOI\�\�M\�؜\0[�\� NjƓs��J��l\�/ݭ\�m\�ɏ,�j\�\��\�T�W[�\�\�CG~�����\�:xd\�FH\Z+\�V^tD�V\��k���2	w!�\0}?�~�E�㜇\'$J�1TRe�w\�0ۙ�\�\"<\�j\���*�\�>_�m\�m&����\��;��J�:��7=�􎲦C�\��,`0\��o�\�\�9Hc6����\���w�\�t\�\�3�ホ��\�\�W\�6��w��Ⱦ66�e@7�fnf�iX\����3\\�o\��\�㙟�\�\�*�����7\�VL�*k?!�N߸����f�sg�ѵ�&��_���G�\�C�\�x\��]����\�6\�^�\"\�@�e\�ٖ%א\\<�\�n��.8h^3,\�ێkqb܅`��0_�i\r��╾����;גܗ[\��aV\�oZN\'����տ\0�zإ��X���<)��z8�\�\����\�y�8�m��*�M\��\�\�z�5\0�FR��\�b�g�\�y\�j9\�%u�hY\�\rC%�SCeI\��9\�9kc!bɠ�1Q\rV\�(\r����e\�+\�\�V��\�\��\�\��\�h�.\�\��\���PO!\�\�пxaG\�\�a\����\�\�\�}\�Fx8JّX?�2T\�\�T\\\��g~O�s[��~\��ӻ֣\�A,E�:�R��7��J\��4\��ʞ)8*\�2B\'�\0W_\��\�)U�SD\�\�	L\��ʓg�\Z�Ӳd\��ɵ��t\�Q�D\�\�\�!\�l���â\�\����GH$��\�x����(H��%.z\�h\�2�\�S��Y���9�K_�\�\�rK\�=��1��g[m^\Z:�\rd@�M�\�\�ǖ齵\n\"�vc�^_!\�t�7��Z��ɥ�\��6\���\Z:�{\�E#��Ns�\�\�%TUyֹ����\�\�+�T\�\�v\\>\�]��;�|0�\�\��\�Y�&�d�=\�o�\�h4*n���zr�a\��¯yT\�.GMx���G\�.�G�\�i\�}��\�\�\��\�ӣ\�h4�|\��\��\�\�\�\�\�ˣ����\�.�GGZvt\�\��6;FF�\�.\�\�w�w�mDFҒQ�`g�\�~>Zzty�\�y1Z�\�\�HDFOZ;\�0:����/�\�\�\�+WGW�\\}\��3�|f��Q[ddEF\"2zv�=�\"�˫�Cc\�F���e9*�bT\��HZ2Zj��.\�\�i#�g[2:\�n�^\�\����3�`���y�\�\�\�\��\�\�\��\�腖�l�eGy�\�z�ȫ~�C@��ђ�\�\�޸0Bd�dˎN\���\�UHB�A�t3-~diԍL��˚8�����_�xv	T\�\�׿;ꈌFb\"qDFg��k�G/�;�s\��]	��T\�\�\�-\�M{�[\�\��\�O�ڼ��W��vQ���\�N\�`\�o-��K\�\0\�b���v΅W5eޜ�$��f����\��\�a飋;�ö�6d2�\�8^?G\�\�(�J�Qp�\�ENZ�\Z8Bܼ�Q��\�\0����y\�`g����\�\�\��\�Y#�4$Hd�nKP�\�&\�c]�t���\�\�\�\�;�_�\�\'8���˿>\�\�~�˓ju�a\�v{���w���T\�\Z\�\�G�F�ui\�\�ɟ9Q�^\�.G�]\Z�ԓ\�{�b$-�\�L@\��i�љ���\���\�}9�^j~[\'ag	b�w�n ����rC�\�f\0�>�\�9G\�Jp\�qڶ9�\�\�\�\�\�\'�q�۫��\�6.<�@�]��gl�3��˞�L8��S\�k\�\�.�\�Y��T�\�K\�\\]L\��2��Z\"��x�\\\0k-ŭ�n\�\���\�o\�!ѵ����\�\�\�=��\�i\�\�|�*��\��.�\�\���\�^�ҙ��\�A��խ\�\rx\�\�N\�3�\�t�e\�\�7^O[˱o\�|\�2�߽\�\�~N�3?\�Of)��;�]H\�]\��\�g��\�*F(���(8\�\'\��,6U\���\�v\�$��\�\�\�\�}�>��+\�\�\�\�lx�L҄�\���b\��o\��\�	�UpA\�Ҷl��\�ٙ\�\�^\�\�ϝ$3\�\�<\�3��j\ZplM�19\�]�5ɱG\�r\��#\�x\�.\�T�$S\�7l\�$�\�s�\�Շ2��\�a:/��|�S\�#$���\�~��v=q@\�\�\"\�ٛp�\�\�-5}��p� ��.D��\��\0w\'\�n��F4m\�,���]#-�d�\���/�\�\�\�½\'g�\r��\�Vo�\�\�_\�ܣ�\�>��x�\�ܯ��\��aM�3Ӱ\�\�6\��#�9�\��\�	M`�\�e\�e����7H]\0q7� FY4a��m���t>w���.՗\r\��m�-O��\�d&�gl\�r˲2T�x����\�[�a����-\�\n/\�6�����\�8���7�\�瞧�\�\�}���̂���M\�\�Bv\"ٗq�N,?r8�a��>��s��m\��<�\�\�\�\\n3�`l�\�\rG\�\�8ڲ{�x}\��c\�\\�U\�����u8�?\��+/��h�\�\�]\�o�w\�a�1v D�˫=�=�ȋ��|\0}�\�S_\�9\�\�^�Jg\�\�D��w�\�3�?E8�\�a���\�\Z\�[�e�\0g~y\�\�T��L���\�,Ai�\�{\��dR\�\�\��\�W_b嵕q�-�\�nӋ~\�/�6�����\�S�o�>`�\�\�w�>V�k_q\�P\�:�{o�\��N�^iG�\��9\�\�\�sg�ո�`��\�\0c�I\����������P\Z=�\�\�n�O���O�\�qV^_\�\�:[}\�Z��I^�g\�8��l\�\�\�_\��\'�a��2�t�\�/��(\�\��z�z\�b�\"H�\�7Ǳ�\�.xe\�xa�\�>����C�\�1�|R\�A�+zQYY+96p\�\�O߯�\�(6\n���,\n2\�gNн�;�\�\'*�+x\�s\��t\���T\��n&*~`\�tϮa\�|\�\��\�Sq�*\�P��\�\ng~���=�n�y~8�K�Gyq\�8!�\�\�8�{�\\xm�\�\�tX*g�g<��Na���6_���O�ˤ��𡇧�Om��\�_\��:�\�\���_\�c\�\���o�Hm\�\"п\�\�\�Í=w`�\�\�#\0�eIm����	�ʅ���)\�O�]�\�<�\��η3W�\�j\�B>T\n�\�\�\�͓\�\�!�PR��քATQ\'MXa\��\�y�	\��sV��;���J�X��+��c\�\�̎\�hK8���7\�\�3W\�P�r�\�\�\�\r3�SsP\�5L�-�Щ.�b��\�/\r\�y��bY&HO(Ip�\�>�-�6��I\�Q��� ò\��ړ-#x%/�\� ��\�j���M\�@\"B��䕎�=�aM��g�^tB�\�	\�o\�3��{xa�r�cY\�SA{ʑ�<�?5\�l�\r�mD��\�Zn���ɶN�\�\�\'��s�ĳuߢ`g/\�@E\�#%tR�ʙ�ڂ�cUQbJ�\r�l%��<Ҭ#Ў{�-ť\�}༁\�}N\�6�͂΃)n-\�goM�o�\��gSڟ�\���\�@9q�\��լg\�\�\�%���#\�\�\��ansq\�)p�\��^�k:���\0\�7\�Ml;�w�w��I�ff\�S!\�˘���j��Y(\�b)n\�\\\\�ב\�^9\�\�\�\�)7�c,�E8ڂ\�領g��c�S�Ȱ�\� ؛�J\�I��b\��T�\�T\�\�m�\�̰l$ːҒ~\"\�.=\�\��jd\��\�.ҀR&\�\0\0 \0IDATP;\�\�l\�\�Kvk\���U	\�1\�\Z n�\�6�h \����TYZSN-f�\���IQ\�g#�\���RL�~���}%}k�;\'m\�\�ْ/hH@f�\\V3�!�t�_��K��Q;[w��\�\�TG�/�\�\�.�2�\�Z2��\�\�B\'Y\n\�j\�\�6\�\��G?ہ\�Á89���\���EP/��U;;�k��8��\�v��v$P/\�/\�MU�\�ׄjd\�F� 5�b�\�k��Fx\�9d�r�)�\�L\�ܐ\�W,\�\�u\��4�3\'Я�G_WV�Y��\�\�lC��4B\��Y�dF\�HB���:w3�X�&I�]\�l\�\�\�Z�\�\���0��	4@�-�\��t-:(�\�l��-a��\�3G\0��\�\�ߘ�7#�p\�ؐݵg��mK\�H�z]U$\�N{�\�bm���\�Ѹb�\�{\��C\�-�	n��	� .[��\�O.s\��i��\�\"��s\�\���O�v\n�éo�y~c�\�\�B���4�O�Kc\rԆ#�G՚l8,�\�0\�%hD��\�iZAc�Ź��8-A(\�\�I��\r\�(A��s�R\�T�H�D\�K���ѻ\��_�`�\�\�P��\�n�Y�B�mY[B�.\�z��\�U��)x\�)�\�Nq�\�s�}�7A��b9\'k��IHe+q\0�\�\�\�\�9\��Ǘ�0,X^�\�ʁ�W}A\�~\�,�r\�^\�\�\�f�sGV/\�y\�4�/��gO\�c\��x�\"D\�\n/\�\�]\�ݥw\�\rR{\�!�5\�\�P͍\�\�_�$��Pѵ��8k-��S�3�`�2�f��pf\�8?\��c���*z�\�]��\�o\�_\�\����/^&\�v\0W�}dc��V�\�KK���\nF\�q�mܕك�9\�z\n �Z\�Uҳ\�:\�]My\�;�TT7�\�\�κtW\�t>�\�\Z/zG��>r�o�d�߇��\�گ.\�>���\�q��{\\T &c��$G�#��\�\��\�Q:\"t�<A��c��.s\�\�\�\�O\'?\�&��#�|�)\�\'��L\'\�\�\��Ƌ\0t:\�ǖY��ˤQr\�+5�Ԁ\�$㝳��\�̨�\��c���\�\���g4\�s�^\�\�\n�iq\�ijp�0�ڀ�\�+XzSv�a�3����\�\������m��~\�y�_y]\�\��>Y�\�Ïee#G���\�[=�Nq7zd��\rr\�?�ű\�L9���ώ\�R+�\�[�\�1ɞ\�@�\�@�\'��W�\�\�\�惷\��\�r-q>l��\�(	Ҳ�\�q\�\�w�W[��\0�\�(8�>`Eeb2O.t[\�ٶf\n\�@���d\�XE���z\\m[R��~<&�\�\�U\��.bá��¡Pm��V\�F6��\��93^�\�_W�\���P<�\�g@�~�m�A\��o��8x\�|�޷�ˢ[�cN�\�\�\�\�@�`����2\�\�U\�|s�\�/�㥬\�\�O�\��/�!�\�O���c\0�y,�\�nĬİ�V\���ŏ-���^ŭ�\�\��?Jפ��c�aw`\�]u�>\�	\�&�&�\�\�\�ƽ�\��v	рWK%O	[\�x\�X\�/>O��EV.\�\Z���\�6\��&����Ԅ#��4���\�~tZ�\'o�\�Ë_8\�ӿ��,�rx\�0�,��E\��Ƌ,\�D��\�ҡ�����q\�\�\�mo%�B\�y��\�\0�.\�;�\�G�T��\�02>\���h|�B��$��`eݱ\��st��l$\�\�\�K\�\�I(\��\�?��\0/�v�\��\�\�ih�\�Ϝ\�\��J���\�\�hsz\�\�m<u_B\�\�ԣ����H�P��\�\�\�\�-�oҸR;��m1���i�ht�Q@�PE��E\��\��0�m\�\Z \��\�@�$���cK\�BJ�O��J�\�C?B\�\�\����зA�\�I\"W�z�\��ŵ�\r�zXy�e�>�ָ�����7\�A%�I8�\��Aí�H\�\�O\�zF\�\�\�\���+�	\�\�{Yl\�\"~\'�\�H��\�9��\r|c�\�\�x8l\�\\8�\�a\�W^d\�f\\���TKՖm�.L���p�+g\�.V\��e��v�҄)�\�\\[ƕ�~\��]�c�1c�*�Q \��y�P�\��\�6kδ,=RB\�Wr*\�HBG:�\�\�\�#\�\�#�I��\'��ΗΑ~\�xH \�\�C��,tе˜�\n�\��[�x�C�a#Y-\�Idw��\�9�ROZ}\�\�ﻩ\�O0���lY��iK��$\�=�V�	�\�B\�R^�L�ч��}\�Wa�3v�\Z�R	g�F�\�içmБ�.�\�\�k���\�r�J�ԧ�T��PgS\�l]r�(P��\�<�\�9��\�Tk��\�0R�s��q�6N4QO��g+\�0\�(���C���ֽJ��L\"��@�\�\"o�����:O�!�6Q\�}Yl�\�\�n���k	\�\��{\�\�f5^_\�cj\�XW7Tʲ\"TY�ىu߳��(R�^?H�\�_�\�i����*�`���\�5I�3\�\�2\\#\�:�\�WIM��=\�mG	\�\�\�zc«�\�t� \���\�óN��Gi\�4\�\�:���5+�8Q�MΊJm�+��\Zs�^)�\�w\�8?	\�E�\�Lc���\���Ajf�C�%��[g\�uBB�򜼆3:�\��?8	����B���{\��[\�6�\�q�ߛ\�\��\�{\�QS�U6���&���WK�8\�hsji��z/\�\�	�e\�\Z\�HF���\rJ\�$L��\�Bȝ\���\�� {L�h!�\�͞JiN$�2=]\0\�~ՉKۜ\�\�w	;\�$\\\�\�\��VY������\�YĘ��C~�.�� �A\�Ƨ�E���>b�\����\��\�\r\�T#U5�T[M��ьo�lλ�퉃�ek�\�N��#����]{��\�n*jދDF\���}���t)$MuUaC\�q�\�y��DZ%\�MQ�\�\�d�@M��L}7\�e\�1�;\�\��`w\rD��K\�\n�N\�/�+��i\�w���\�-��m\�\"qc\�ǅt�B\�k!\�\�\�zX�ź\"�l�y\��U\r޵�`�7}\�󊆐 �\�R�eS�U�\�\��yH�\�z_�}3ps7x��\��sj�\�zz�C�B����M B+��h�F���P\"�uЛ�a\�耄���~�@a@B�QmK$N2.\�\�B���\�[�Jz*G�r\Z\Z㙵+�n`g\�\�ϴ��:A��2^/�A\"J�X\\�\�-zŁ��\�HV�\�\�<\�d��w\�%\��\�~a)��\n�����C{=�7\np�\�4Z9\�Tt-�\�\�9��%5�����g�Ι@5Q��\�\�g����?��Ƨh\�\�w��\�4ԝ�\�Ƌ\�N���Em�\n�Jx�\�R_U��\�n_Wd���X��]�\�\�b\�\�< vk�E��\�Hf!W\�	\�8e}�u\�<A\�\�y�T)US�6�D	�g�n�#���AL%T�\�{\��\0\�Z�,:�\Z��� �fa�\��k�E ��YX\�ׁk\�s%\�6\�c�,�� �\�\�Q\�G\��\���2��t\�.\�\r-P�_�۠��\�}�\�g��\"�\�Rౚ��T\�@W��r �x\"&�aB�Wuy\�n�̥����^�Aaؑ1v�!MvI\��`��\���^[�_\�U\�/9�V�\�\'d\��hE��\�h\�\�m%\�!`Ը`�9E\�tڂ��|�DZ�\�\�}�\�͂\�\�N`-��\������z*���pc\' V&\�ndnx\�NO1gITof�\�\�uҰk	\�\�)g�/gC\�\�l)r\�@�\�е`s�uv3L�g���Xd	$�\�\�X$�_c8(��\\�\�\� \�*mK�\�H3�C\��+�I;\�\�^8�3��Mԧ\�Wmv�ƾ-dC�b��0pa�\�\�\�?r���\�p�\�\�9P\�@\�y�p\��\�ݞ�t��\�\�\�\�QhA�\0�A�C�)����U�f����\�W�\�\"��}G\�ZI��\���\�P\\%ۈ��\���\�Z)�\nZ\� �Ⴓ�\�CZ V\�,�K�\rY� ^B�\��	�`t\�[\Z�4�U��)�Q\���p�+�վW\�\�^c^������\�\�qE\�����\��\�K�X4.$\�@\��\�v8��\�*Z�a`V\�\\\�B���6Ž�\�,$H�IC��:�v�)�-(Ƚ�tq�\"{�9��\�NI-t\�>`Y:�\�}0ö�\�\0$�-ȡv���N�\��Š�M�\�\��r JD\�\�\�{C+N\�Q*5w؅�\����A���f*f\�+Qz�)t?K\�l+H+\Z\�u��}�Gq%�ip.�c�\�\�A��v {H�\�a�,Y��\"�Az�\�P?�z��\�R����%\��:��U2\�Z2�\�JHo+�\�Wqc\�\�\Z\�\�`#L\�\�M�G���j(V�\�\"�%\�k��2�\�l�:�u�\"Δ��B�1��\�f�Sq�\\�H��W7\r����	�E��9`\�6�+1\rsТ�jb 8�d?a-M\'C{9�w�\�}I3d�F�ԑ�,�^�G�p�:�{\r,\��\rG��Eq\���\�I��	\�40IK����\"iP}j��*���r\n��^Bq,֧�YP�rv�]h��S\�\n�%�$N\�\�\�|�;�%W���\�p�}$E9\"�\�=\�\�w.\�\r�<ކ�\��A�]��-�^���B�Z�ה\�>E7@W\��8h�(��`2\�W򵒕\� \�IJ\�(Y[\�!C�\��s���ׂ\Z�\�v\'d!�@JE_\��+oB����a�|X\�4�Te�&��݅�t�\�v�\�,WQ����o\�(�Vo\�\�  �\�\�p�-\�;ȂE\�0\�Â}�s��\�G����Sn�e X�ҭE�����ȋ�� F�Ԇ�\�;�\�ۈ\�m\�\r\�[ ��V�\")\�\�q���q2�J�\�\���~k�h�\�	;�z�\�\�\�Y�U�P\\��UU�\�\��\�W��\�I�A_\rOڏu �\n�\"xoo(��U����\����.�\�/:tX�0::b�d�QE=ڂbH:��aU�z\�o^�\�]\�9\�ɰ�u\�@\�\�y$JE\���˾0\�\�\�∅lAH[i��|\�5�\"F}D�\���\��~ \�6\�\�:�Xf5v�+.\�\�\rmrPЁ�l	\�X7B\�/)�Pk�.Z�\�\���Ų�.ÄTʠӫ��a|r)\�ru��ۑ�\�w\�\r\�\�u��\�\�\�]A��~o5�\�O�E@\�RQ\�NI,��{#\�P�2~�&�zݱ�`\�)o�ߕI�ީ\�PI9c\�\�/��cϐ�,r\0�O\� }X�\�\�l\\\���\�W���>\�\�\�po8\���#}���쀒�Q m����(\�c\�K�P�,�G�\�\�HF�\�\n��ػ�}��\�(zaZ\�v�ۂ|\�0��ރKp\�+q+�V\�\0�m\�\��罼����<R�\�\�R�D\�w([ۥ��M�ʏ\�2\�\�UۂL�<U�\'W8\�5��/\�y<.\�\�(\�\�^�����e)\'>\�E\�r\�^�\�2�+�����}�\�%�oR\�ڒ�K�a�7��\�y��\�\��2 ��\�z���Cp�!AQMK$6l���I�\�C\�.$���Y�\�\�j\�`�ۺ\�\�\�I�\�\�T��+���gù\�\�aC��J\�?w�\�*٣�\�O?@\�@Q@���t���0H\�<�n�����=\�	A\���\�{��+\��|\�t[�-zё_��7\��~A��)�G<�\��W�H\�0q$I\�\�J�J\�iQeʫ\�N\�vVq&<�\�\�D}K\�2eMH�\�Ŧ�z�\�9ˏY�\�\�q����\��z%v_B瑌\�C�\�\�+�}ʒ�DȽ1\��!ȁ�	��j��\�PX�?!\�\�J�A�*�\�#��ա��(�P���ஃʐ�%\�/�քIDh����1]PFGD|�\� +;df�-�v\\�̊`3ZH$�(ՠC�8��S�*	:,B�˃\�\�0%qP�>xZau��|D��&�ݫġ�\"��ꭜ���\�Sr\�m\�S�,�ч�Ep�\�[��JJE\�a��捆 �\� =���&�\'|8@q<+G\�$�IH}Iq\�H���mP��r�\�\�	a\�?h&J\����\�Q`\�\�9�6��\�!�$D�\�ٽ�E\�U��\�\n1O�Q����Pn�}T�v�{c����=�<�ئ{\Z�2g�ڇ��\�|\�!�a�|u\0m	+�\�p\�k�%\��\�Y&l�\�\�j �C\�h\� Τ�IH	G�J�7\n�T�p\��� ��/{f\� \�\�v�?b��\"\�\�����%t�\�#��yX\0�UTDKHD\�>\�F�Cl��(�B~��n������\�RF�_�A���x��\�L���\r�v#�֏Xu�LU�?]7qv�VT�\Z��5�9�\�\�]�vt���|F#U�8^)�v �L��\�ȶ.C\�Mŭ�ܔ<�Nq�a\�\\\�\��e�Z\�P\��+\�/�(٧:\�:\��~I~K���\�Z�-A��ު�\�\�\�\��-e�V��\�*�\�ƽ��l/��w;X���&	Lw�0��A���i�jp��0Ni\�[��\�>0�\�_���M�\�\�\n�:Y:\�1\��\�̶\�d\����V\�[Jq\r䡘E^\0�QA\�O���j#{��\0$\�^*���ӎ�\�\'\���\n]�\�\np*8W\"�P*ȣc����A@��\����-\�y\���\�<\�N�A\����\�@~;\��[wǻ�\��\�=ٟߋޠ\�x�`��M𛱏�\0�5s\�\�A�̙�\�\0�3g�W�p�F\�p\�\�\�=$\�\���.\�C\�W����R\\�}�Y̟3�?X\��\�S�\��;�\�\0\�=�П\�\�p������jH\�\�!�8dc\�6����}���y\��l\\�\�\�(��d�{ܿq\\��\�z5\�f�~HH7�O`��\�c\"U�\�\�3�\�\��9Æ�l\���wxi\�=\�v\�@U�m�pw\�z�G�Y(bkcrj6Ln�Z\�}T3�f\��n8���-H\�\�>E7z\��\�G\�>\�iQ\�JQ	��ҿR�7���f37\�Wʋ\ZK�:$�a\Z\�\��0�Qb[),�i	Tqo\n$B�;\�K�\Z�ͥ$Ɏ%TM\\�^\�Z2�n�\�������ʯ�0\�xS��\�^�̕1�\�\�\ra��\�\�\�Pæ��&�\�ǽ\�G7�\�ȶ7�>�^�a\'��_\�~\�\��GG�{�\�[�K�V\�>��u@�J��\�\�AR/Q�^�\�qex\r˸#}#ec�w\�p��mѦ\�q	���`W��\\��*\�C�L#U1�P\�t(@E�\��\�vR+\�]8\�#W\�\0�נ��\ni\ZR1�n�s:3�P:��\�>z�<r�\r\�\�\n�p���k\nr�P\�M\�\�7cm��^h\�\�Lٜ�+�1I&\�\\\��J9�`if\�م\r������\�\�\r�\�pm}[�\�cZ�1�\�\�E�\Z;\�7�\�p��,�s>\�,�Ů��h\�\��\�)�g\r\�\�\�K�\�\�=���^1]��\�!\��e\�\���뫓\�\�a\�<�\�\�\�>6nĒ�9Þ=�dV�c\��e�z�\�y�?P�\�C�W\�\�Mhݑ\��	m/>�\�5mP8�=�~��\n\'e�\�\�\�<�w8ty\��\���߲\�\�:�\���W?�ޣx�\�>�\�\�75\�\��FcO\� �\�\0\�#Q�@�H�Kݻ��DkP��\��V�\��~\�\�%���\�`0�xGq\�?(�j����\�7p\�Ɛ\�_1\��H��<{԰��d�\��\�\���y\�{���\�0\�\�+\�\���\r\������kHK\�\Z�a6&`27�\�\�\�\�p\�\���i\\\�\�.]��u\��\�▫{�q�Rp#Ǻw{�q35�\\3�*�J\���o)źR~GI[aP\�`]��Z�\�F8\�*+5\�녾�j��\�jA13�\�&�k%E����\rM�\�|W���\�\�\�\���Sm�\�a�\�k\�Y\�S����:Etl\Z6_�c?@\�\�dj&	��73����\�>G\�\�|Ć)\�<G���݌\��\�+p~m\��TmW�\�\�\�E�\�ҡ݈i�C�}�\\�\�	:t\�\�S�]gL\Z0˦L[\�\�*�\�k\�+}UJ\�>\���L;\�Uŝ���o\�\r�6U�\'����2�UT�\�bG\�\��\�{��\�7Mm�|c~\�\�6�}{\�\�b�\�#\�C\�\�U\�����6d\�����Z\� ��\�=#L��1�@67O�c ��9���9��*�\�aP\�w<\�`4\�S�`a\�\���۫\�+|\�\�y\�pӓ� \'\�a\�y�\�\�m+A\�~��/\�F�U\�\�FnL:\�e���\�m\�\�Z�v��[qc���J؈���V@�\�\�\�.\�\�@��\�pe9^4V�\�1Ì\�Xx�\�\�C?r\0+<,�JqWr����R\�]���T\�\�n�\�\�4=̦\n$HfO�<j�\�\�\�/\0߯.\�V�~\��k\��!66=��9\�ޅ�����=Dߎ�A|^%E���ަ!1\�\�\�K\"I\��\\��\�;ڄ�UG����<\�n\�3�7\�u�2f̜\�\�\�\�\��\�\�\�\��\�\�\0�C\�O��P��\���r��\�yD��\�k\�=	�<6�6xӜ`Ώ��9�lz�x�\�\��F\�\Z3!E\�\�s\�\�ˣ��S�G	iAVV	�\�Q�t,\�겙\�2\\�\�t�}\�\�\�(�`\�1B�VH[�\��h�>�Y\�I\��\�S�\���\�)yn:�s\0@R/i\�\\�B��\�\�v��yI\��k\�jB\�:��\�۸��_���@���FQ�;�|�@���}JL>\�[\��5\'\'\�}sN9��@(h$4\"Y�/\�@6y<\�V+Ρ������]�4\�\�\��\�\�ꪮ���2h��\�8���\r\rs��vC\���\�\�)\�[3P\�zI\�gy���\�\�\\*�lSu+�\��0P��2m\�9~\0\0	\�IDATɾ#�2\�R����B\��\�1��S�X\�\�\�!\��ԩ��\�3Z���+~R����x��wgP~�\�ѻ\��\�7\�@�3�Z��M��Zxh�s�Y\�\�\��\�`<ǒ�5\"9ŧǋ� J�TxoW\�\0<��\�S�Py�:��w}2��H\�!`\�L*<\�Н7��!\�K��-Qmx�L|\n[\�Ǚ���QM	?k7s�\�m`�\�p\�\"\��L5z��O)$G�\Z��Q94{	ⴞ\��\�s�R�P���p�L\�T#:��^��\�M\�D�\�\\\�G%���\���Z\�p��I˓\�=*\�u�r\�GB�D�׀ѽ7\'bSp<�04.EJ�\�0��YC�߅~z�\�\�V\r�\�5�\�\\S\�f�Mˇbgj	�\�\�@n\0@\�ݰJI�\�R*8�+��\�de\�\��\�c�{���=\�\�\"V\nrL\�@�a�!r\�K�\�^�g�F\n\�:�R�B*k��Fz1\�\�*u�8n:\��	�X\��&�3\�\�($Ǿ\�\�/\�fR�6�z�\0X\�]���bAW\�A\�\0x\�^\��\�r�\�\�B�\�\�\�@�p�ux\���z\��Q:*��\�d\�5�\"� Qw������\Z��)�0�I�&r\�E�+aj�\�\�a:?�\��p���o\�~�g�k;0\�\�5y7W\�Vf\�ߙi\�2%D�S\�� \��nJ�p\�}�\�\�y��X�!#\�\�C�\�u�\�t�2�\��j�\�\�\���\�V��\�뀇��ڴwd\�-m�Ƥ\�\0�\�\�A\�%:\n,�@A�\�㫄\�v�@ \��{7\� d8նo�\r�<��m�R\�0cJ?�EH\�J\�y*���0�N\����P�\��\�8[\�@sX\����\�N�w�\��qE-�L;�t(���6�]�BN�G ���\Z\�!H�\"̬\�\�N)�\n�\�EaC\�� ,+X3�T$/�j2\�U�c&�,AE0��\�M\��S,i&�\�\�\r\�u.�\�\�<�#Ff�����BÅs�\�UՑؽr\�\�\�:&\Z\'�\�Gf��\ZD�\�\�\�G\�?\�\�/$\��B̸%�a�&D�\�lo\�0]�Xt�b�\�>�~٭\�h\n��3\�/p\�\�	\�Y��)A{NJ���BE\���}\�37}`�;\�]\\sWQp1$g�HDg��S��`7CV�sS�00����U��`�Z\��\�;X�~\0�wI\�\�Aݓ\�\0\�:\�\�\�>�\�ft\�E��\�\�\�ה���r�i��\Zy_�BE�%3W�y\����d-*\�\�k6\��nz�`�٣2�\n\�v\r5�G7A�<²�q\nj�{�z4��c\���\�]T���+QP�wCz\��˙B\��0�r%P�\�nB��MɁe��|\�\�,�\�;9;Ԥ~u$����\�\083��|�`+\�]\�\�P�\�\�;��Y,���~\��5;�\�L*4�ϰ�\��\0�?~\�\�G0��OK�,Q6\r蔓5ק����?gn\�a�}�\�\�{$\�v{n��x8\�}���\�\�\�E\�0/c\'�\\�`6�攃6\�+`\�2�M,OA\�a�34\�b\�9*^	:�\�\Z[��6\�K|j\�v�vC\�\�WX|�Bߵ�\�\��=\��\�K\�\���m��KJܱt 4·\r\�\�\r\�-�c\���H�\�br붼+Jh\��#��u�N\�Ān����\�\�9\�OP�( h^7\�Yk\�\�S\0rX�=]�s@�y\�\�l���E\�٭�QAa	�3�,��,ilp���\�]�\"\�\�\�E\�տ\���U�@\�w\0\�V���\�\r\���nЬW��\0����w7\�?\�\��\�U�\�\�Oc}�\�\��b1\�\r�y�6�AR\�k���\r�n1�ni�u}�!\�R��Fx�\�1$��w\�$6\0�֢9�`_�a�\��\�c��\�ޚ�\�|�ث_mPY�\�\��O�Aw\0\"9K\�6��\�AUp\�#\0X�\�\��|/�\�U\�3�^.f�\�Nd\�[�>6\�\n�+1\���e�J=!|�\�n\�\�\�.r\� q��d:%D赲`6\�\'��\�W��1�\���a�\��w\�{O�X���v�\Z>�Y�`���$\�/Z�l�#X\�z�!s֊��x`\�T,�M�I�M��\0�3�ͤ\n�u�\�:\�w�T\�:\��Z�\�Vq#O\r8L*\"�6>(�)�b셓1�\�S�R\'�r<�r�\Z]�4��+��c`\'U8�\n\��p\�\�p{\0��zb^������\�*L�\�l�tm*o7=�*üt^r��S�F.���g\r��M����mlM\�Z[ށ���{+����b\n�Z\�\0`��W��\\%0\�\�\�(\�D%x3QE�\�Hcl�U�+\�5*S�6{��\�ۿ�\��>u\� ��>ۯ\�U\0\�AG\�e2ۄT�SЈ��a/�`vt(Y���\�M#[\�L¦L\�\�ȍO =<Z�\�!�#�cۄ�\\�ܶf��J>ksȲ]w(`:���\�CE\�$��\\U�wH\�\'\�K&]s�\'�^C\�\��z�A^�D�Eݸ.Q@����3��m�|~MD\�\\��D �\�3\�\�D\�N�f�La�\�c�R���Z\�|�^��f�_FRO��gZ���1�4�L\�x����\��E�\�\�{F�\�\�\�\'���\�\���k\\\�֥�\�\�\��9�S�\�\�\'�>=�[u\��\�\�\��As}��\�\�\�198x�\�(�%�\0{�|1\�\�.��E��R^��\�e�\n\n\�K]��\�)~\0\�\�\�;o\��\��d��\�����\�vskv[�\�Bm}�I�<Y�}u\���\0�M�F�ѥSb\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(1234567890125,'Coca Cola',10,995,5,5,'2016-01-18',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\0<q\�\0\0\0sBIT|d�\0\0\0	pHYs\0\0�\0\0�7\�˭\0\0 \0IDATx�\�}�W�\�\�v9y5��9{�nlfKCd\�Gd��\�f�G��\��e��t�\���	�\�\�rqf�,8�\�&�\�@B��\r-\�\�0!ʁ�րk8���Е;\�nӻ�\�hS\�\�}���^���㶫|�@�J�^�^W}\����\���\�Fa�Fa�Fa�Fa�Fa�Fa�[�5w�_k\�tV	7\�t�.RK�co��e4@TE!P\0�VA�*\�\0��\�Ӳ-\��˥�˅��\��\n�\�\��P;S��\Z\�ߊ\�@\\%��\���*�����E&\�J\�Dm\Z��\�\Z�c�HO�q�\�ǧ÷\'�H-����DV\�\n@�\0P`S�RPJ\�b�?dN)P��*\0��R�w%\�\�|��\rPPP\0���jYV_!��\�\�\�iV\�TP\0�/,\�\�G[��a\�E�Vb)e}+\�a*�@U\�\��)�I9\�,W��\�JTa<\��(\�\�\�fe�MQz����S��\�6��<{!(�J)�>E�Z\�7\�_�j��\�29H%����U\�r���(*`D����	�C�1F�\�H�4\�\\OU\0����X4=\�\�ZL}�Wa�v�\n`)@�\�{�ټ\�!���!�:��B��*��\0�\\=�v����B@�g\�Л�v5,_�\0 \�\0�\��;�����^\r\\[U��B�\�#\�\�\�\�\�\�C\�$ֱ������=a�/���M�4�d�n\�p�h\�jͫ\�\�T���2Y\�-$�k�GbR\�+��_U\�ֲ��\n�uC\��ț��JbM>X:^ڠmsԋ����\�F\rR\�\�Ġ\���W&��*��J��\0z=o�\�:TnT\�رԪ\�T��E^��\�\�H���\���i\r�\�6���\��$�G*���H(`�T	Y\�U�r��+B0�\�ĵA�N*RC�\�\�/5�(m��#6�%.�l��\�I\�o�.ՃC\Zl\�q���\�\�s�\�%�\0\�v���\�9�Q5�:C\�Ej��q���\�%\0\�*(�/A��1\�|\"H\Zǯ\�냻%\�\�_VG*WŵD��QF�my\�!�/BX�ñ�\�v�60��z�VܿۍT\�ݝ�\��\\�Ѐ$� e\���?>\n\�\�Ơ:\�>\\� @@\�\��na�\�a	\�:�礒%�s+\�QM!�\�r걶\�#~:\�H<�4B��U�mʇ`�C\�y��(6�et`~Xy��\��PBY��\�6\�X�\\�Q=Q)�M�>j`[\��6�\�J\�V\�5���Y��܇E�l�o�s�sf\0�{��[Υ��\�b7�\��ε|��@&�\�\�\"�qF\�H.\�bS\�\04B\n_�n\�>$�XlX\0u�$q�\���[6\�~�	\0@�6ˎQ���I&5Ė}h\��]\��u�D0�+*6��>�\��o|[�i�>Ⲫ\'\Z�\�\�\�\�[�Dk���k\0,A�\\�pա�\�\�\�v\�o�����`$��cR�#]bX\0��L3��^{�_}\�)���_\�z\��u�v:m��M�g($����\Z�(�E\�\�h�\�\�2d\�j\��[�DklC\�YG\�-\�Xp \�[N�K�\�&@�d��bm���\�\����\�%�I�%Զ\0�}�M�r\�c_<\�9Fm��*>v\�]�>E;E�91,�]>����6I\�J8\�\��\�Jj��?Z\�[~ːhO��؅I|~l@��x(�f(�s�\�dS�򣌅�B?��L\0\n`�=&)De�	�(\'���}O\�\�:\Z�^\0\0\�\�\��ĕy�4136wp\�t��\�QZ�Nb\�c�B\�3M�\noG\�5-�4���=�L0\�*!�O\�{��]�=H�\�bz�z�>u\�,\�ݧ\���f\0\0��9\�n\���O^g\���&T��5~�B�)��\n&�̻�RLm.���?\�i��Im�M\��\rW\�˹اEa�{�=}\�\�s	\�\�\�O�M,	�� c�g��>V�\�\�W��v\�Ȃܮ\n�OM\�^�|�j\�}S���Ic�W�\�d�U\�۶35uu!�\�4\�`�A/E\�j���B�\�f��\�NRC,pR�Ĵ�\��\�>\0@no\�C�AT\� t��iL^]@v�<�_�Z�\00���\�ww��\�{��$�}\�Q\0��N.�աC;ȽA\�]}\�!t��	B��%�\�Д� � �5\0\0�3�����Ԧ�\��6>���]IHP7h�\0z\�6S{�u=Us�\�%\�g\�������\�\'���K�a*�/IFce~{3�H4�d\�qK\0���?�\��\�þ|	�o���)��ͤ\�D{�\�y���S�Kx\�\�slzl�\�[U~\�]��\0hZB~A���\r���7\�q��}@V�8�$֭�*Ee�}o��-\0:\Zh��MvN.�����{\�Lm.�R���4�ͭ�=X\����޶3�\�\�{�\�\��KD��5���\�]�E�K\�#\�\�rU�����\�2\�o�\0h�Pm]���	O�\�#�l�{w�\����#��ES�h�^\����/�oϕX\0s9d�͕$�X_L\�d\�\�\�z��S>�\�\��O\�ޢ��3\�\�P>u���\�h\�\�#�=G?5`����?�G�]�\r9ok�\�\�Uvdc\�!��\�\�\�%\0\�Š?�\�\�α\�3�0��\�>�\���S\�\'���\�z�ۊNٹ��f��eQ߻/��\nйx)�L�5p\�0�\�H�6�q����]D�rhQ\��(f|\�d�\��}t\��>��7\�>SH.�wm\�y\��9L^]�d{�#c�}Dӆr9t?�{\�=�9�K�>�;J\�\'d$�$\�0\��\�0͉\'�}?����H��s/��Q�?�vl�ٝ�Q�\��\��ߟ�zy~N��τ\�\��2���P}\Z\�K��\�I&�$V��\0�>\�Pa���s�\�)�\�\\@\�7t3i,8�\�\�SO#�\�%�\�b�m`js\����OZ!\�\�3\�E9\�\��p�?�+�H%�!��\��\�z�Hh��35ԫA�H�ǩ\�V C0\�#ʹ\'�\�\�\0}�iB{x<��\�S�Q!\�	\�]G�ҩ��\�\�Jp8FF\�bS��9\�Ryd�\��\�|�I=\�\��\�8S�\��Җ~j�l\�⧎	U���Ӏ��X$�s�P��aDW� � {��F��\�\ZZq$�\�Lq+�����\�\�/b�w��Xå\����껱gi�]G,�1Y\���Om.��Mxڄɫ\�Ѝ�Ko�	\��L�G\��a^�>�}�ܓ���X\�/{ģ0�g�6`|4\���U\�f��=���l\n}��A@��\�\"��\\&��\�,	D\n߅\�`�s\�\���\Z\Z���\0\�;;\��R�B��|\�D��ҜC},\�0WXL;\0�@\�_��B\��tF�p�\��Q\�@��\Z2hG������\'\�!�<�B\�uX�`JڐJb-\�!�Dy8��oO\\`A��a��c���\�\�N\�v\���L)�a���B\�F\�F�\�\�Elݟ�J<�e�F�q&���й\�b�8}W֢�\�,t�V~\�C��\�N�>6\���\�0o@!:N��eA�Im�QiA*�V#Bd\�\�9�[�P�<�ʕy\���\�B%��&\�R�q\�Lm.��\�N�@\�\�8f�f�Z?y3�]\�����s�1\��r�$�@*�E�\�ե�\�d\�0\�3u4J\�\�ض͉\'P���0�\���8�+�M����,���\��p�#o\�||ܘ[\�L���\�\�	���\n�do$U�\�Tk\�\�F����dw��.�P߲5��\�\�G�D\��\�\�l�0\�_>�ɫN\�\�ܫG1���\�\�\�\�\�9^	A@զz��Jp\r~\�\�\�\�F\�\rw�G\�h={�gfc\�n\�w<�	c�� CM.=\0\�\����\�\�Ƒ\�~�\�P�+rp�xA�\n.|C8�6�n�\��n\�?:�^��\�\�8\�b\�D������j\�R�W$�{��즠�}�$Z�Rp�\�⿝\�V��-p�ыJ#\�}�1hN��n7\�\�Q�2�\�\�l\�\Z+m\ZO>\��^m\�a��\�d\��i\�\�\�\\KJ\0\�=`Y.!\���&��Eʧ�%V��{�\0\�\'�)گE�W砕|>#~��X�Ao|\�@�\�U��^q&V\��Ѫ��`\\�v�\��\��\��)#I-�����s\�\�.#bލ\�ӨoيrmUc�%\�\�0o��\�\�\�\�z�\Z{U>u�W0qu\��\"��_~%P?���\�2R���T�\�K�\�#\�\�\�\�a��\�K\Z��V\����C\�[ń��ݯ��\��)���\�N��\�\��V�p\���\����v��D2\'lfdc\�NH�%��RT�\�\"��\\\�P\�D�;3\�f^�N�\�\�\�X��\�;�\�&ZL\�\\\�\�\"Nu9\�:}!:�\�\"|����\no���{\�\�<\�\�K�@\�[��͌k��g��>Eml�\�>P���+�d�B\�<�f���n�^��)`��\� \�[�\�\��Ҁ���<\Zs)\��P��,\�\�%şC�\�!$\r�mժ�A�]\�n���w�=\\b\�\�l`fK�\�3IH��\�2`��\�\�C�C�K�<dF%\�˽G�R\r;/H�Ċ�[Tw ���掲\'\�L\�X@���4��׽�����.�0�P{x;&�T>\�el�\��::\�|��xP؜A�q)e��Aq��4M�\0RH� h���\��\�,�ze8Oy�\�\\�/�&f���J�\�B�\��z�x�oK�\�-u~�:9�\0��Ǔd��X�!\�\�\�_f�I��\�{�\'Z#�rN\�13z\�O���O���k3U*.\n7!�}|\�ߑ�XI\�\0����a\�2��\���aE�\�[̵Q5�\�.�\\�˗��t��;�U�����3\�SI,?\�!#ڛ�!\Z���\�\�l� ܷ��ҋy�\�c�>)\��e����+{�e��t\�Q\�C���f�/z�I\�,-=\�3z�m\�k\�\�И�ږ�П�D>\"o��}�V�MF��^\�\rLs�`��X1�iXi\�L\�J�&|�=\�3C��cכ_m�F��;\\M�\�m\�N1\�\�F4\�\�\�m�\Z&�\'�\�q��\�9���\�z1đ��\�S\�wNz���ma� �0y,�L��0)-w\�\nb	G\�\�@�\�q\�v��2��U\0��a-�qFƄ��\\!��{9z�y\�O�?ːT����vm\�\�e \�\�\�Ӏ��X\0L��E�\�[\�P5�m)\�8[cn���Z�l\�a\�ʂ#\��]��!���\�X�\�ij�js��\�wU�u�^ \�\�\"?V\�\�\�r_\�PT�K��\�qz�S\'a���\�z\�e��:�e\�#��{T�\0��<�@�`٣�w\r\�#\��\��j�瘂X��;\�t\00\r����\�6�m����\�*�\�ba�I�Dk(8o�0\���\�|�)\�z�\�n\'\�3�\�6<&��\�%&\�\�$��\�r\�p|�z��&�1\�x���-{\��c�\�h\�p,\�c\Z�\0�Y7\�O�\0u\�\�;�\'X\�\0R4�+EZ;\�]�\�jYr\�e�\�w���޻h��9dR�\�Ŧ\'!���\n}Wds�j�?>\n\�0G��;��\�3���tbE\�X���G\�U\�z\�F���.���#�\Zh�}\�\�{��35t\�\�\�׹�6?����²&S89ҀD�B+v�W�\�f\�D\��\Z\��Rw\���\�@�\�\�\�4\�\�&\�.�\���\�佩.��\�b@:%H4�V�h%\�n\n�\n\�\�{����\�^��w�O�@i;Ɲ�ē\�ȗ\�%%\�\�Kɑ�ƍ�e7\�!\�Ģv���A��\�6\�FS���8:\�c\�0\�B�J�\\A?��&aƸ5\���)Jsx�\�hH\'�)jz!t@�j,8k\�݇\�\���\\rV�\�,\�\�!:I|�P\�`\�\�Д�U$�XחSYBU\�߲�^I2\��\�!˙T�\�?�tb٫�`��\n\�E\���a\�I\"��(\�8$�Xԙ\�� ����컒\��b��\���w��\�k�x\�\�\�\�\�:�\��<��qXrX��{-\�?�\"H4���\�\���W�U�O\��r;~��	8��\�\�P$R\��\�b\�F�\�[��\�\�\���;�ylf\Z\��\�<\�kz�SG���7�H���\��\"\�B{���=\Zҹ�Xɨ�ܞ\�hH�d��\�\� e�i\�\��^\�\�\�0}\�\�\�u/)����Ja�p�k�癆\�/�ў\�\�,\�?���	r�^>�Ʈ�E�cp���y}V�n�$�XրAh \��#�z\�z\�h@*\��l\�q9\���\��B[�=\�\�A$\�%\�w�x�\�\�mȳ��Dk�\�VW.^B\�X�\�0vꄷW\�K=Y<\�K�a�\�\�\�*b\�ŋCӕ|-\�\�2\�+��\�\�\0Msz�Uc\�ﰕ\�kz\�|Ij_J\�rs�� \�����\�\�#N�A +�W\�{nm��-����S�\\\�w�\�\�\r\0�|>��\�r��B�r�i�\\��*e�K>��\�8~\�i�r\�5��)�\\\�p7��!�_bk(��\�\�0Q�\��M,\n\Z�\nW�ZV��\�\\n|�⋇\�z�\��B\�\�J5�\�į�q\�AҬ�\�A4}��C!\�Î�P�%\�L^M�:L4�\�b�`�\�d	�� B���\�xl\�߶Q&Z�Oы]\�>j�˘2Y���q3�.M�\\�C�\�\�N2\Z{v�l\�\r�>\�(\r!���#�\��TL^I�\�C��P|\�0s)\�Ǎ\�n\�!	?\"\�&\\��<�X\�!�Rbݪ\�H�3j�\�yT/��\�\�63\��\�\r�.r9�\�Z��S$|�z�@5}+g��q�\�\�\�N,�\�ۧx\��e�ب\�/�X\��xOP���`�D+\n��\�\rK\�\0c\�O�ѤR��f\�D3��J�\�]\�qV)�Z�&֠	��(\���#ϳ\�t.4\�=_�l8{�6qY=6)�U���o)A�F��G�\�\�=Ƴѽ\�\0��&��\�N\�*�uu�O>��]\����b\�L��>\���\�\0�����0u(b�Fk1\�U\�gXȋ�W�\�\�9��#HU\��s���S{�\�Qj[Xy@��\�R�0�&|�������2�Ăw6tJ�h��\�R\�٧�ev@{���sh�r��\�8�\�G�=\�W��m)��#��s\�L�2`99\0n	�Ǣ�G�\�L.RD�\�I�a\\\rY�����x %�X\�0\�[o��\�\�h\�?\�$\�b�\�\�ΘY\���|�3yBL�W0|{�DK,+f�0\�\�\n�6�\\h=R�ġϿx��U���@\�8��Dw�s�Ͱ�s\�&\���,��d\r��\0S\�\\�Y\�\�}\�\rQN	R\'�n��Z/���I.\�톒G�\�-\�+\�z����CCCӂ��°\�h,�D�$V\�5,Jq)}o>\�\�0~\�DhU�\\l�Ι\Z�?�\'��@����-=�A�&V��>@yn��\�\�舄�\0�]6�yo5P��\0B��\\��W����j�\�N}�v\�g�G\���b�\�Wz���0����Ȩ:\�D��[�\�\�\�f�6Ba�\�1��\"6�0M�+\�\�\n�skۏK�\�4�\�F\���\�4B$G�9\�\�Ȓ�\�ާ(�7\�\�6�ŀ�:#\�I�;Im��u�}�-�\�\Z�\�\'���K%バuv�\�6�7H�ђ�\'f`\�\�\"\�^\�-\r\�63\�mUv{jNCy�$�\��@�\�\�q6\"�U�\��\�\r�\�/Ϲ�+\0D#P3$U�hM,\0!\�f��\'T+\�\�>�\\b��\���-��Qy\�y��\�\r܋lm\�\�\"\� R�]4a\��n�hi(\�I�C�Uڎ�/�U\�\�\���ٝ�u7�\�&\�-:z�KC=\\��\��\�\��҃$v�<\\\�\�S�\r\Z`Rwq� \�떠�#�T\�?:�3�O\Z�Iťy 8�,K��\�bb\�_Wt>G6֪a%��.v�\���&�\r�>`R\0F���A\0�\�a;<��\ni&�Hb%\�0\"��W\�W\����?7\�-������K�>�ђ\'��\�-w\�â�\�@\�X@���\�\���L�T\�Z\�D k��\nH�n\�T�hl\��Q��r~x\�>��\0n\�G 5Ջ�Rɕ!\�t�.�Mw\�#\�0o\��\���\�2\�~\�\�y/:p�M:*\���fHr6��)7�m\�\0\�Yق��U�>w\�-��\�:\�J�X|�\0�1NM7��j���F�\�<B���ѣ^az`�Y�\�Z1\��Z\�V���GG6\�`\�\�\�\�ߝ��\�gz$V*��*\�-e+U4\�qqd;E�3u\�\�h&�m\�*+\�\�Y\�qoN���@cl<��l��鐣�߾�\�`N\�\�b)��z6�S\�t\�;\�\�\�\�R�<#WY���*�\� \0�4\�\�\�ߊ��Q\�[�*�\�\�hye\�asky\�\�w�n�C�|Y\�\'�\"F	\�h��{���\�\�3p�E���ۜc\�VU\�bؘek*PT�BYޢUw\�\'�<\0+\�\���!E�p5\�,~\�;�\�|\�SLx�~[�=��í\�9_g�+_\�Z\�|Q�*kk\�\��\Z\�b	@���\r\0\�))O}R\0P\n�Z��\0�}\Z\n�\�C\�\�\�\��b�K}��XGb(\�\nl�Y\�����\�H\"���}�_\ru� \�\���z\�7ك4Mn\�R�\0\�}*Xl���\��$D�\��\�I\\�O\�k\�9�{}R_�u!\�ZV\�#�G���\� \�	j���\�\�\�]\�\�\�,�L,\0Xz}���6!7�P���\�9\�ɦ\0�x\r\�5�_H(�\�\�j|\�\�E^�H\�\�|r�\�C�16\�s\�Y:��X��̙\�{�\�}nY�\�Hp���i�\�4[u�G�o��\Z_\�W;����{Ń�}D!,3^N\"X��\�s��l�\�>!�O~�\��ܞ���o��\"��I2\Z#�­�>E哏���}W%S��\�\�yj\�,�?�_�\�\�\�׺�w\0\�\�t�Es�������-\�?���U�\�\�\0\0kIDAT.~+{��\�\��kJ�^\�Z�M�\�4�Զ\�0J6��Z�Z\0�\�\��0b\�\n�\�\�L�=\�om\0`�dX\�\r�_¶�oj�Z\�(\nc��P(U(_\�(.cAL�\�e\\�8�OLs��\�\�����\�\��\�\�\���\0n\�����Xs���y��\�Y|��\�:\�L\�D�׻A(�j�\�Y������ĝ��K ˓�_�7a�ppڒ\��8@E=�Gm\�\"Aq�\�\����|0�ݛs\�j\�\�k5MS��<4MCV\�.\�{|\�\0_��o\"�+m\�Z÷���¹��y\�l\�]g�s\�D\��\0\\\�w;K�\�U�*Q�E��$��\08��`=о	h9\�7b\�\�S\�;\�\�3\Z�$$\�uP�Mޠ�	�\�\��{SK��	����yh4d3YǾ\���\�[�X\�\�K\�\�H�\�J��%A�j\0B)5��n�myG�!�>\�l\�&���\�\�37\�\�\�\�:\����o^\'���E\�\\�����XC$�y�O��\"�	�\�jB�I6훎�*t\�_7o6ޟ�a�)���P\�\Z(@~c~��\�P3*�B�i\Z(�0�&zݞx\Z��րI�I�U� ս\04\0\��/�\��Ϸ��G\�4�@\�k\�b~.�ା��.(� �8\�,�e1�Ɉs6�\�+!$\"k�\�[#\��6\�ue\�\�B\�4F\"1��\��{�\��\������\0�\0�/���\�p	�\Z��Xk��\�[�� w\����!k\0@ͨ\�2�\�˲UUaY{�\\QF\�\���*,ʲY]��D�e�=�DvO؀JTׇ\�\�\�\�\�\��u\�\�\��p\�\�ϻ\�\�Y\0�\0\�耑���X�A,^b�!�oi�����w�\r�2��ߜ�O\�h\�M���ۄx�\0A!q	dQ_t�E\��rN?\�W\��<}z�v���h�J\��4�L\��#���\��͂kg�i$\�=\0�`��\�\0��ĵI3�=\���ղy\0k��vOvcV\�\�rkTE]�iڽٌٍ�i\nl��%8\�R\�)�.I\�Ht�Rz��E\�2M��ر\�E�z�׻n�\�\r�Z�i���R��`j\�\Z���\�,0����\�d��/x�\�H��&b9=B\0\0\�>\0\0|�\�\�F*�|��b�e�uP�!�l$��!!\�����\�Y-��ƺ^��\��JԵ�p7-j]�\�6�Ԧ&\�\�\�)�]0\�r\�H�^�\�?)߿&���\���L߮�\�JZ\�\"�ڻ�0\���	�T�y/Y\�K��`\�ZW�OqM�ӏ��M<h!I\�ÿ.\�˄�\�7uM�.�\��]G�f��6b.�d��?\�A�Vl_�+\�%J\�\�C�!}�\��$\�ui�}�vH\�\r\�S�5��H#�\0�݂2A\�\�_&���\�\n�dq�\�}\����i%��5!�k��]��\�\�\�ߏ\"F\\��Z�\'�w����\r��\�k�\�\�u\�\�\�L�\�`��\��+��0\�#\�\��\�ٓ�7\�\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,0,'',0,1,0,0),(1234567890126,'Paq 1',40,1,20,0,'0000-00-00',1,0,0,'�PNG\r\n\Z\n\0\0\0\rIHDR\0\0\0�\0\0\0�\0\0\05\�ј\0\0\0sBIT|d�\0\0\0	pHYs\0\0\�\0\0\�\�o�d\0\0 \0IDATx�\��ם\��nq�ա��j3\�\�\�Q	K��،x�؁g`n�1�\r�4��	�G6�\Zz�\\!+q�;\�:Rl\�\�i5vb)d�;\Z\�i�DΌ93��\�f���W�\�d�rj\\}c\�r�\�{��{z~��.\�}�f�ԏW�\���\�\���\�\'�	|��\'�	|��\'�	|��\'�	|��\'�	|��_\�\�MZ\�\�P�\��D\Z:c?\"\��7H�\�R�� ^0\���\"\����	r�}-ZK3p�\��F���i�sA}D\���.�\�i�\�~M��Td\'�\r~�\�u�[��P�z*��=��\0P�\��D�?\�u�$��B�V\�I�\\j\�ϕ\��Ok%�?\\�k�\�^M��↴?������|\Zq;�\r\���~\�_\'4h\�\�����R\Z�$2�<\0���rd�@9qd��\�S>��P5��5�Bt=2\'\0ׁXҢɄ�=USx\�E\�\�������\�k�#e�R���bzn�N��\�\�\0k8\�\\\�\�IG�M\��\�\�\�\�jE��/���R\ZAH\��R�\0�h�C\�T�s3P5US5��_QJ�:�\�\�#�d����Ik\�\�O\�\�<p\Z��\��+�O)J\�L��#\nv\�U9i�T�\0A,�\�\�(�2�\�\05{�\�\�R\�Gf�E��)p�$���xW)�2PJ\�<8�$1Il\�UJ!\"�9\nE9I�ǈ�\�1\�\�,���..\�/��SP\��\�S�̼�H\n���\�Yj�Px\n��(\�$_\n{L\�b����\�\�\�A()��6�\�\���ծjv\0\��j��z\�c&Qk�\�\�!I�ĉ9���(x���u�X�$�b\�\'v[d\�(\��IQ5�`�\�Y���\�W;)�\nI\r\�kW�\'\�T\�\�x>�9%u��������a��[��·̵j�\�r��|\�HIM\�|�2@Iy��Aοe\�Б�B\�:P��H\'.#�\�H\�	�J��\�C9\n��\0RAD�`;\��R�{\�=C5,�$Q�ޭ\ru�2��Ѯ�\�T\�[\��=�C�6\�\�\�P��@&\�\�\�P�\�na�\���ߌQ�\��\�Nj\�p\�\ns��OS\�P�\��Ĩ��7�\rl\'H\'EIJ��yƍ\�*�vq�&�\�E��\�\�p��!\�@�ơ��\��\�n9()v𝒖K&%�\���\��t@\�\\DL[�VvI��\�\�=�}�ģ\\K�z\�C,{�@&��.�,�\�\�c\��*�\�\�\\$��JRP\�\�����\�x���\�5\"xJ\�|xWkF�3{W�\�\�T\0v��\�\�_J^	�:\�4HV\"W�I1`\n���؜iy�\"\�J�\�s\�)�R+�k\�\�[�*+���B\�*Ym�\\�[�8�E��\�\�\'\�\�\�r5!��n�A��Nxh���X�fm\�I����T �v\�)��\��>�\�\\~o��k!\�\�Rc��\n\0\�5�6��t��⒙��Qp\�dY\�\�b>�\�qRP1��\��\\gb\'��8Ph�)�ZQW\n(\�BQ(\�p+\��K\��K��\�F\"�\�EQr\�\�)۪��Sj�,%��xu�\��f\'B�r\�\�\���!�\���\�{}\�+�\�X\�W��R��9�S=�A�k\�@\�\�\\�\�/D*���\n\�\�>��\�\�\0v�LX9���K\��Y}k\��+�V�(�MV��P��^�\�(%\�*޵~`n0\�F\'%���W�\�}W\�/18\0�7�\�\�j�+�\�~\�{$�BDR�Ue%�\�j����M\�\�&�;��\�#D�\�\�I\�\�Q\�d\n�\�Q�l�d�\n�YYd\�Yn�I\�r+өi+,Й�MB�IA�\n\�Qh�p\�na��1�+G�\��o\� �}����B$��\�<{	�ms~~i`\0`x_c\�е�\�5���h�@�\�^*��]2�W\�B�ڈ�;q��*�\n�\�zyc���\"�\�\�<ŵe�J��ɂ\"Y���\�+eM\"��G\��r�]پ�1)����\�\��M�.�+\�P�������\�	�\�J��(�$�{��v긺Բ\�h�P�F���B:y+��ȇ\�\���?\�\�:6\Z\�F\����\�\�\nC	��+إ\�(E\�*�!ݲȘ�\�Mr\�#b\�\�)�c��c\r�9\"9n\�ZnYc~\ru\�\�;9R�e揻U�ue\�\\Q+$n\�AΦ�9ɝM\�\�|p\0���+��=^�I\�)�n7P5�t�T�\�^i\\KDRD�S^E\�(-@JQ�\�\�\\0�b\�t��\�؁�<f\�+�[P��	dJcg,\�\�B�3\�!��T���We���jd$3H$H*%�f��oLi\",}\�9ݦ�X�����|�\�B1d\�\�\�\�P�D�\��\�\Z���\0�����\�\'g\�+k�+lO�;U���q\��ڟz���V\�]\ri\r���Ju?\�^\\\�2�wϟKnO�v�L�;1|d�1\�ʑ�����k}�����\�13�;�Bu�\�r �Ȍ|D�\�\�@�4.��\���x9�@Ш�\�=U�\�\�\nU\�)Y~�TXH\�N��\�z\r�=P�H�P.��=�\�$�MIR��ݭ\">\�5����|v����P�^���_\'\�§\�NE\�c�\�:V�Y��k�\�	$-�{ف9\\�\n&\�\'�Ϊ�R�H�!kɅ���\�\�:+5�+�ڎ����Ji2)�\�\\!�5�[���\�\�\�1�^����I��ؘ7��l\�uˠ0�)�\�{��W�\�;�R�u�a\�1,\"u,e\�R\�iW\�\�XN\�����&eZ��c\r�x��ɠ0 V4�*Ũ\�H���\�\�z�I�\�zMΞJ�*\�]\'?\�\�DR\�]1PR8{�蟥Vz\�#Y���� ɤ\�\��>���3�K\n]\�\�\�\�`\�p;��\�J\���z,��V�CF�LHȩ�\�86�\�z�\'�\�-\�e�\��)��jʨ\��D�\�JwU$\��wN��\0i#7�R��pμ��\�Q �\�Ƈ(�)��H��e��J��D\�_}�w�\n]û|=\\��,$��\�hR�\���l\�J\"h�L3aJ	gE��$B;\n�F=�\\�V�Z��>ײ���Bw｛P:�)i\"E\�R=�\�\�io\'�\\���\�\�NUAs\��/��ͷ���u��3���\�\��\�\Z\�/�{�d��q]FR\�/\�hٰ�S�pM\�nQ�c(F0\�\��\�˒���\�Z�	C�T��\�\��Q%\0R$\�U��Wj}۞� R�\�Yu��\n�Z�\'\\E�\�I\"�}W�\�8]�ꕳ\�,\�\nͱu��=�(���;�\�����o�\\��\���X7\'V\�\�)�M�A���\�\n�]!Xv�)�m\�\�NXY#���:gO\n\�2XNۘE���2\�>�����UH�o�:�\�{\�6F�O�E�\�8� ���\�r�\�س�7v�S��\Z4\�	z\�_���w\�U6�\�N`#�\�z�\�(\�Q)�Am�ǋw�\�u��$I\�\� ��4_�U\��q\�.�Q�P�g*9\�\�\�6������\��(\�\�X\�u;\�\��\�n�wאn�U\�\�#��\n\�\�yVڝ�\'Ӡ��\�s]ǰ\�4�BƄ^JQ*E|wyf[\Z\�Fc%��}�?1Qh�ѥ%.��6^	�O1��\�<�����l~�D��\�z��Ҵ����kqX�f\�/`��ҧ��?3x�\�\'g8\�\�&ҵ�Na؁q�n\�i�y,T�fE\�t��\���k;��=^XK˸\0i�\���y(�Q�\�\�H&\�45��Nb�3��@�;��>P�Kl7so�\�@�}\�^;S\\��\�y\�\��\�>|d�b���s꽅\�\�\��\�<�\�N�\�,?\0�2K��j�q��\�\n2��C7۩9��B�$�\�(\�\�8su�\���:�f,\�\��f	�YB\�\�g3rYO�*P1\nV�7��\�bш�t\�G0+\�Z�U\���\��sJ%!�wZG�{�b\�^��Q�ֵQy��\�*� ���	N�,��R?8ra���\r�\�(\�-;��\�Pt\�8��{A�x\n��\�8\�(E��)f�83�\�KY�Ʉ!΄D�#���\�փ����\�\��1,\��)�\�H��$\�PbU1�}�|\�s�\�\�ĶQ�Y\�\�b�\�\�N����9\0\�w\��\�F\'\����\����y5���r˯�\�@��Uv8\�\�\�(8��܆\�v���a�{1�~�\�o^\��ߐ\���x�o���`\�\�\���x��u�\���3~�	B\�=?��������\�\�ٻ~�;\����\r\�m�MV�v [s\�nQ���v\�X�\�A�;q�s;\���\�w�\�\�΀�8�3v�N�\�v���q�\�\����\�\�\0\��78xd�͢\�v��0�\�!�\����q\��\����\�շ�rw�\�W2\��y�3v\�\��m\��/�mK\�\"R��\�ײ߾���\�\�l���Vܡ`�}A\��ّ�upv\��3�,\��\�p\�\��;��ň\�\�\�f\����0�\�*ޅ\�~	\�\�)~\�\�{�/�}������!\�2�\�\���m\��\�\�\�3��C\'\�p�\��\�u\�\�b����m?y�9�\�~g)\Z\��qۗ\n���\�.���߽�\��¿s>\�\�ncE% ˟QA\�v�\�vr%\�v��s\�\"⎲�yWw\�����?�\�\�n\0V/�Od\�.\��eb\��\� Ӱ\�?�����6]\�s,�3�or�+k��\��$юb$7\�%	�A9)\���vGx\�Z\��wB�Z�~j	n@�&>�\�޺1j/e	\�d	o��[�n�-��\�aC6\�\�\�JpQ\�h�\�A\�֫\�i�E�I\Z��AV�\�\0\�e�\�q��3��^\�\�\�\��U�1\�ꪀ_����\�\�z�?e��%3�W\�Ĕҕ��\�6s\�]䡯@�/�\�d1a�	�\'	�\�Y�j7`�Y���\��\��\"\��Z�^�	�����\�\��+��\"<�\"}\0\�Z�\�WO#+m�\'\�\�@{iE\�r\��c~�d��?��\�݁��p���yb����\�\�l�H����R�L�d�q\�J[\n�`�^O�\"@���\��ً1S{4��\�ѵ\Z\�;\�\�J�k-�^Xf\�bL�x@|\�\�\�As\�	I�L�CxF��JL,)i\�Pl���\�L�&AB*�2=B���\Z�>��G�8�#\�\�;�\�\����TL��Ǖ\�JX��\�\"^\�u\��C��\�\�n�HI&k��ĉ �R�r-Cڥi��%h\�E\�Q����A�\��q9�[\�7�V�\�m\�7Z-��\��Y�<g�kG��g$��	mII��8�?�\�@uVYU�\�\�}\�k^�6\Z&�In;\�(X�ʯ\� ��1z���@?6N�w�0,\r��Hp����.\�E�\0\�\��T�\nݲ�B������3�\�\�z���H���^��\���\��LH>K\�Ӏ\�ҝG�1H(6�p���n\�\�0��\�\�K!���4��揋\��\�\�!E\�fy�\n\�TY�&\�_g�������d\'=߷\�\'+}_�\�vw{�\�6�L\�\�؆���lp�\�\'T<\�8)ܮ�\�L�\Z�׿\�tJ\��\�L\�Lhu��$\��h%!\�D�2!\��;1��e�\Z��2�!�d�ie�\�D�r�*\Z��^�^�\��l\"\��0dY��\�=�tTNt�D��g\�\�vXY?\�j|��&v�a�\�1�f�qIt$�a\'��3@s\�-\�0�d>\"�\�G�\�1C\'O�\\m�\��^S9�Ǘ���)	\�f����m\�\n\nCQS)�\�N4��\�jl6��9�����\�f!_\�\�\�,\"_�E8,	\���v���I0�\�fB*^��&6\�\�\�Vf>�s��dB/�Q\�X\�Xl\�z�\�\�mk�XjDJ\�eb\�}[8��R\�T\�s?=D��#\�N��Y;��\�GF��_i�N�ҝd@\'Af��?c��\'h�9�\�\�\Z-\�#W/�\�\�;�\�VZn��\�70\�f\\i_\���\�ڮ�T@n�\�N M�+��E�׍FjS��\n�6�	�\�6�K� ̄0���O\�(&�\�Gq4+IjӁ�Z��U�n-\�c\�\"�X\�Vgt0\�\�h&h\���I\�`d(\�η�Z�����)R��Re-Ŗp�5ɏY|t��[g	�z�\�y\0�GǑJ;9��\�U:\�<9\�\�爯\�J\rj\�\�\�<9\�\�k���.[\�uj�X����ޢ�|9�Tد\�wf�Yd��, \�z|�q\�t��\�g�����]���(K8�>p�\�zPo\�\�n�\�L\nЋ5]0�%�P�\�\�\�[6A��\�t�n�60YS�\�$\�^�ו�\���0\�\�r,�*\�9���HJ옅����\�����KAM۰ax�r�\��#�HV\"�M\�\�_\0\�\��\0jO�~V0\�\�~{��g���/\�,K_?�tbd5��\�8c�8=0@�7Xזּ��$\�\�[0H��è�o\�OI\"�Qd��\��%�\�I�/fW�7\Z�M)����>�\�|\Z5�w�\�\�\r �����\�d0\�1\Z\��\�mN\r\�\�#Q\�f��M��Y��\��͘\��&\',b�\�Jy=��\�k\0��\�Nw�I�0\�I̷�\�$���PR\"1���N\��N\��NęLX�J��h\�G�TYi��5z\�J+d��Oa\�\�\�j\�u_�\Z\�\�kP�\�0/\r �k�+SL�?c\�A\��\�9\��rlm�\�zH��ߨ\"\0J]�/\��Fr\�c�j69�ָJԼ\�^\�h6E���\��\�W�J@\�o�p�Mx=,>\�v�+�c\�<ӉV�6\�xM1�\�qN�r�苓]\��)\Z=\�\Z�xQ׋�8�\�,C\�#�>\\\��j�v.΃cv�4��v&�\�N\�^ސ�8\�I�\�D�HBDy,�\��0�����u\�b�e�%���x��g�?>N\�ӆ=\�\��\�<\��KL�)핰\���:0Arͧ\'9\��� |{��W?\�\�\�\�\ZS7cRfG?\�\�\�\ZC/�X�0���߱�o�N�����5<T��\�f�o��;E�.U��?�{￷��<4\�\�\��Zk.�?Ǩ�\'��<q�ƃMN�<\�\��K\�KL}\�KJ�x�\�j���6\�_�fmm���G�\��\�jd(TZ\n��z��4%\n\���8+\�\�cc,�7\�\�\�%޽8ϩ��9�$L[c\�\"�\�$B�\�\��˙W\�p\��O�\�M�@�>�WO\���#_?�\\i\�j�\�7\�#I\�𗧐�a�Jk���\�t\�\�\��=uf\�0�����bbq\�\�@���\ZZ�8 +f�\��\�\�\\e�;ل��6�6gm\��Y��\�L��ʙ��C5�����ϟ`���ű�\�\�y)i3���6�ހ��M�I��&\���y��͈o\�QGq����\�i}z��[k��\�/���vk�(�Y�2�/ؾ\0OL���\\��f�\�\rF?;̱�c\�Vʅ���\�4��y��\�Z(��\�{��A_P\nu�\\ÌE\�\�S$7\"Zߙ!Mb\��:3��\�lrlm������\�$\�Bp\�ŵ5���j�s\�#�40@\�{\�\�Gj\�f\�0���\�\�� �A$�^\��{�\�I�*�lr-[S�ے�\�\�U\�5BvK�L8\�i\\�X�\Zamm\r��ZH�Z&.\��\�\�\��\�yI8\�i�\�\�-VW�\�f�\��ޕ�ic��%�o�����\�/�(�_g�n\"��K���\�_\�\��s�\�I�|�d�I\�\�\�Ԩ8�yn6��Rx�\�ӓ&\�jU����8f)�$	g￷hi컯3�gH�=Xg��c��<��vz\�S����]��\��\�}�t6q&\���>~M�i\�*[!�S\�e\�گ7\�˴\�,\�\n��ک\�w�$��w�w��\n\�W\�\��\����\�~�7��;/�px�P٫,\��\�s��\0\�\�WLj����\��.\������\�}c��k\��=N��\����>HVB�_�f\�Ѳ�ޙ\�\�\��d\�u\��:s��`by	�@����\�\�O\��2�\�)�|�=\�=wܰ\�\�8\\\�}�\��:�\�J��u\��3m5:I�\�B\��#R&��EG6z\�&g��,�	@��04<\�\�t�j�g��`,\�\��wd�>R\�=	���wڒ��J\���ޭk\�h�s�L~�^\�=��sV�kW\�\ni�r\�\�\�\�j�\�OO<}��\�ef\�1���\�a�\\�\�\�\�ϒ\\M\��\�\"s�?\�\�%\�z��\�\�0�l�䣯�\�\�\�\Z���B:	����}�[��v��;]f�C\�k�\0cP�8�\�l�j\���r(\�j�\�\�\�\�\r^؎�M��ԅ=\�8�\�2x��qG�ӝ�+SC\�\�;@��	SZ1�Ƅ1Ƚy�\�]�9ur��\'\'\0�}��o�/\���z_���AD��4_.\��?\��@)���slm��o\�\�^	����40���P\�#|{�\��R-�\�1���1y�E�\�8K/O\��\�1�n����S0E�˨����z!C��En\Z�T��\�w����U����}Il\�]g�0ln\��:\�\r~����|\�8�\�	\�^�L�㏕F\�Q���\�d\�l��w7c�O7���u=Xg�KG����1�G/�\\\�{f\�1��`���{h�^P�:c�=_j\�\�\�\��u]cc�L\��+{=\r\�q\�8\�chm�\�n�\\\�-W^a8t`\�Q\�$\�&\\�v�\�e�W��\�i�\�GYx5@!�\�\�o�L�$\�Q�r0�	��p=�\��ޡ�p\�(�O1<۽1c�٣�5��9\�\�z�\���_�\�\�\�\Z��L\�z{���N3>�ɵ]7���]H�\���iU�\�9u}��q9\�<�TJ��=oa�����M\�6d2P�\�t(B<EX�U�\��J���\�\��̋0Z\�\�w�C�a\�u��\��]\�\n��Fke�o0�\�c�v�l\0\�B\��\�{/dT\��:E\�L�\�7��\�@F\�\0\�(��\�r?��f�{Q�����,<w���hW,ύ\'��\�ښvWB����%�\0\0 \0IDAT�Ѷ�J)�\�,�\��?�ӣ�T�VswNs\��\��-�\�HۉMH\�\�R�3n\�1=\�K��\����\�X�(5�4e\�1�*{���\�4��Lͬ\�Zc\�f\�\��.\�=ޝ�#O`\��c\��\�@u�)�XZn1S��d���7@ �\�ϼr����q!�X��\�Մֵ/\�4#GH\�\�|>J��f����46\��P\�߳y�^�\�v.|~��\�\�{F_;cL\"L-/�Xc�\���\�N\��\�\�`�ϰ�\�Qf\�\�v\�M)\�z�\Z\�H��\�S\\l�7xAw��g�ekh]	�\�񨣘��\�7\�3�N��TM��k����̾y�\���r��Z`{�\��\�s\rMu\'���#f1\�F�.\�d0��$��^9��S��Y��2ʍ� �\\�[\�}\��\�J@)�M\�`�˝��\�}\�q��o�E\�	ַ_	\�+}w,\�|1�&�;��ؖS#�k\�q�l\��\'�m�o�\�˘Ҵ��eJk�}��o�7\'3u�Wc��/p\�O^\�\�\�~N\�:\�v\�>l��A��\�-\����2\�,\�s���w�\�.?:\�ص\�\n�\�7CB\�\�wK\�\�(&	\�?�m\�]Mh\�kt�\�IP\\��H�\�܁!T}s\�@\�}���\�ZG�\0�nF�h5<��HV\"������c���Z���\�u\\\�\"\�vO�����-EGS�A!�բ6�6��#\�s\'m��΄3��VkXxv����{d��$!z \��Ӝ\�>GW\�ˎ\�4\�+2�4sb\�s\'��L\�LE\��|^A��/�\�wL\�\�&���3�\�\0f0�LLvl\'���\rwMG1����kRr֐�l\�,��Ei�4I8=0@\��#=w�+�$xd�\����Sj�\�\'h}{��$�\�N\rz\�\�\�N\�G6�Hw��8\n\�X\n!)G�\�\�ɋ\�_��$4Ũ�\�\�z��M&�69�.\�\��S��As�\��{w\���q_�\"�N2!\�`���ﰢi��a\�E:\�\�\�l��\�%\�)�?\�}\�{�(�\�\\\�ˌz\�z�<\�g9|q~]|R?�8B\�gL\�\�>�oMr�\�Hy�m�\��D$S�ƀ?\�w��,a^T�����X%ӁQeBA�\�\�,�-&�G3ShIH2hab���\�T\n>ƚ\�;\��\�l	��}\Z�g\�*Ȣp*�y�ݍpC��\��+�u`XFX\�L�n���	E�\�.Uq i�\��5+����fɏ\�j\�\�\�4��$Y^\"|g�s\�#��?G\�#��L�S\��m��jW ]ms\��\���\�,U@̈́��ݞ\r\�\����D$\�q�\�QZ\�4Th�\Z�\�ۚ���mx5\0�835LhfBS\"\�\�\"\�]�\�\�X]qze��7Њ�\'�#>r%�E!j	�^Y��\�T�R\�Ė>�}\�i�����!q\�,�q�\��\�\�L4\�n�dy	I#+m2�\���\�Gh~\�gwy�=et���ڙO\�aBN��� �����/�X�\�\�\��\�\�^c?\�\��}\�c\�1���\�M}m\�bm}H\n\�N�l\\���+uLx\�c���WJj�YO�j�=�\�\�n\n����<x��Q�o���i\�)���\�\�\\Y B��e���\n�mT\�	I~�Ltq�\�\�f\�+wCӁ\Z�\r��@Zo�����\\���ώ�dL\�8\�\�\�\�U�4I��l%Իī	~���a\�6\�w\�\�\�\Zu\�ّ�+m哨c\��\"�i�\�\�/d��|^���Mھ�@���#\�#C\�=!Y�\�|o\�H\�s�\��@�h6\"\�wga/�\�w�\�	���Ҁy~`��ߟ\"�\�\�\�G1\�\�ˤ\�CSN�\�`���\�\��J)�����(ߜe��cL݈����\�AUsq��\�U+�\����џ�X\�\\y\�i�\�\��?�y2\�\�UA��s\��D�|P�IJێb6I8U����?\\Ϟ\�\ZԌ>\�^���\�\�\�!�\���b+�G��p4u\�V\�m򮽰E4\�H%䶼O���\�3 1\�\�ϘA:	��}�\�2��\�\�.��ԂU\�E\�\�\�e\�?^$�a\�\�\�\�!·\�\�{\� 0�\�YF^>Ź�\�\�\���m�~nMAn\"�1�Y8\�s�[��d�i��mQ��Ң�uDz\�\�\�-(J\�k�RDX\0$&\r�VY��A�\�ေ\�Yԫ\�`q�~H��уD�+\�a��V%}�^�	\�B_�׉i�r��j��\�4NN�@\n��d�\�SkkF%��3��\�\�\�Fթv�\�Gh}k\�\"Q\0�Ps��\�K/�\�\�\�Z�]�tW�T�ۣ��\��\�\� \' JmJ.�o\�\�WJN�z�\�]@o\�QK�\"G!��\�L\�\nIu\�ܠ��\�8Ԛ��\�!Q[8u=�-U\�J�RYT��T<�\�\�\rj�AM�I>i��Q\�j�񝼳����S,=9I�\�I���z�k\�\�}��$	ͧ\'IzԔ\�\���ߟ$�\�q�\�ܠ\�Ҳ;x�?9ٝ,b��\���ힰ\�~��x�\���r�M\�C�\�0\na��T�\��ގ\�\�\�4�\�k�sZ?\�`4��N�;G�o�`�#N��/:�4\�M\�q���3F/\�3�\Z1��\�B\'fty��{<\�\�b�7ΰ�Og�mG�\r�\���E^��Qq�����\�9~\�\\|\��\�\�\�s/޾����T\�&��\�x�\�~��(U�0v��9:�\�\�\�\�#Y	�\�oo�ls�\�\�\�\�͸o�m\�\�\\�\�]��n{XՖ�1l\�E�b].y\�>�P�pJ�TU&,v\�|xr�p\�\�ȍ�w/�Ӏ\���^\�\�WB��\�\�wNi;���9+k-/\�綥�G�$\���\�1�\�)\�e靷�r<�\�F[{�\����^g\���\rO���^Z�,e\�	�O�\�\�\�\Z��a\�\��\���%�\�Ƒv\�eYVu���&L \\�2�~\�DJNE1\�\�1��\�\�5�C�]\�G/KV�����\�,���x�\�ܪ9�bm�\��\�=R�f��A���>ʆ]t\�Hމ8��e\�e�NE\��\�(L�\�M\�\\)��\��\�\�\��}e��WOѼǨ\���F���\�G>X�\���\�ˆj�N�S\n�\��\"<%�\�9Z_;\��w\�1qi	�\��/N���=C{\�z��\�#\�\�\��/OuY��/N�eG��\�mG(\�/�\�A\�g*�\�l��m˒\�g\�\���7+;b�H )3pTj���83{�%3L�\��j�\�\��?Z*/n\�\�z�%N|2�u��i�i8��mg\�!c�\�|\�F;��5MC��m�4��%\�\�6�4˒0Qxk5\�U\n]S4TI�\n\�\�\�m�l�\�\�B�\"��WO�mtc\�\'�w\�\�!\�ހ\�S�\�.\�\�\��b���\�g���_\r	��d�M�\�\���fw{\�Ac�tm]�ۇ��\�&dX\�*\�\�O\�bj���)J$\"ƭ�$,��<~��7zܝQ�%�nj\�3�N|ݮ\�P�\�?�\�� $\�\�g�����1+H�Q��Hl�\�f@����2\�\�\�\�O1q��#��=©\�%\Z/�>�9s�g~o]�3��\�f\�\�F�w�knꞀ%���qr\Z��1\�ʐ\�\�o�%i�pskt\�j͑K�	ߞ\'Z\\��)&o�\0�旎�\��\0s�{�\�7\�\�H-�\�!c\�\�Ơ��\�D����Y\'lo2�l\�\�f�S@R1e\��v\�\���tI�\�\�}�\\�*\��s(i��N\�ܵ6�Y��m�\�����F���:��=u\�&x\��$a��!�\Z�\�uf_>�[o\�\�u�`�㏌Ѩ\�:��\r��\' �\�\"\�:\\�\�<\�ҷ�\�\�A!I\��\'[�\�,Z)B.�q�Co\�<y��$f\���3G�\��\��5E�a�\�\�|wL�\��?\'�Q�\�8o?�dts�\�\�\��lM�\n�mGL�\�[\�\�\��m\�r\\rZ2\�(�cW�OZ\'8=<\�ĵ��J8�וƷ�hkC��\�\�?F#�\���棇i��D����Џ�\�^#�M�tq\�8�k�\�\'&x�fLp���R㾦;�P�b\�\�\�\�0�kk\����������\�7l}��#(����\�\�\'\�9;0@\�j��\'\�/�p�\�N��\�i}{�`[UdՄ�\�!\�ܪW\��9���Y��-L\�\�\�wa\�\�	j՞���7\�\�\�6\�Jw\��U�i�D�;��g\'�\�3�!�\�D?]f��i\�\�3�\�QF��D9p�2�\�aS\�\�\��\�\�\�}�(\�|\�\�Թ�u�̹.\�f�cGn�L\\�ܕX��~j���?\�諧A)\�\�q���o\�1�\�E\���\�HW¾�T]�1�\�}ġ!Q���\�gb\�m([\n\�\�\��5i�\0lR���ZR���\��\�I܍\0��D*�L�8�:p\�ь:(o\��wߡ�\��%�\�h�����\���x��\�.t	\�@Yİ\�\�z\Z�=Ӧ�FS�\�/AV#�^���hwP\�\�.S\�\�\�&Gu�\��\�YNN\�\�%��\�\�WOq~`\0}_c�-ϗ�\�G\�}�fD�d%d��\�\�\�\�/���T���Nb�\�Մ��\���֧6\Z��T�+!�}��\�)\�`3\�\�pǕf\��d\��E\"Q�/�W�\�g�6�\�(\�g骅\�{_\��V�ޔ�X�l�\�\�\�;�x4���3��K�\�����8\\i\�e\�\��ןj�\����V�T�^�N��\"��\�\�T������\�y\�w\�\�\�Ͷ?U)r3\�(��ЙI\�\�\�!;�S�w\�_�Afg�ߘ!�\�i\�\�|�\\\��S�\��A\��9���=\�f|y�\�\�i\'\�\�pv�K��\�W\�_?\�\����e{\��%�\�\�l\�\�\�s9)(�0�r\r���\"<�z�1nS�S#e��Դ\�S�	G\�)EPS�\�\�\�\���\�\�F;x�4�����us.�\�t\�Y0�{\����g���?<\�\�\�\Z�\�[ ]���,��g�\�b»��ȇ&;K�đu�FJ\�~�J�\�9-(\�\�/}W�M*Ti#�c�S�8��c��P����a�J��<���m\����L\�f��=��t�\�^wN\�kp\��\�Ż/ �\��GY|\�8r=d\�S�\�W��\��JƓM����������-\���\�~�A�]	����ΰFF\�\��],e\�Xĩa(�g~��C:sl;\�6���\�|e\Z�^g�����u\�\�crm�\�\�N`w\�\����\�Yf�G\�<�gSԤI�K����nVe�j<�H\�\�Q�ue�-k\�i\�{+KҖ�\�5yզ>��?�y\�9����\\��yd\�-�H\�\�\�Y��=\�~\'z\�%}��G�\"��9C��s̸.\��~v��Q����A��\�\�OORh5\�#��\r$gA\�	\�`mO?�\�J��3\Zs�E��H��i`\�]\�>l\�t�\���VVE�\�w?\�T\�\�\�3�����;\�vdÝ\�?\\$K�ą��\�\�#,>7��\�g\�\'�?;J�!c��h/.�B�\�!�\�%\�vĻE	:)\�n��t���m�c�emjЃ0\�=i-ڮk�Ə��\�X\�[忲�\�s\�)޺\�R{�mm؍��\�+\���B� �\"�^�	�p	̞+G�,r�sU3�X�\�@>*�(����^8A\��i��\�揌�\�D���@��Jˌn\�g\�zX\�c�\�q�\'�M&�^\�6�S$}�I{\�X\��\�\�\"\�\�&��5\"U30�\�&U�޳Q�\\�+�Z\�\��\��	�\�R\�##Hh���Z߫9�\�Ԍf���\�$�\�\ne�\�M�(\�^��$+k\�vw\\\��\�Y��q\�옭hGK���w���k-����0�\�1�@_�\0H~�H�\�Caz�����+�Y\�k\�\�Ζ\��Ť�l\�\"\�E� S�U\�7	�\�eI���ݛ�QL\Z�A\�\�Y\�Z�	��tt#,\�\�\�2��\�V\�Ѐ��|D���UV\�1\�H�<,v\�:\�T(�brh��c\�ό \�B\�zs��#E\�}\�\��[(��a9\�1�H`����~g�\��\�Q���H+\�Ω`�MGПj�\�l�?7s���\��\�Â���\�Ƥ|\�`\'O\0�G\�\�T\0\�\�p\�P	X����bd��\Zu-�X��d.E��\�2�|Y �\�\�#B�\r��\">\����\�Ө#\�q\�|�]V,꤀B�ذU����>K��N��wA*`��	�\ZF��|�l��w�.Q��s\�䍔\��[\�B+�Ҭ�l�H�\�k\�þҞά\�;@\"\�v�a�w����)�\�L�M��>\�Jb^,��o^�\�\"I�jj��۰��HV4HK`\��I��Zc���J�\��\'�D���[��:��U\�v0�S�NL$B\�Z��\�\�h�2��fd�L\�m&��2\�is�F\�jL�\r]$)A�L���A�~�U\�?�\�Q�wWtd�c%�\0���V�]\�\�G���~P\�75\���\��O�\"yG\���6>\'�6�\Z�m�+�P\�T`t\0�=\Z	���\"\n%�/\�\�Ͻ�h%�J�v�\�Ä�$&�*l�r�aGX蘢�9X\\4\�\0��\�hF=�2NR�\�!vnSDҢ\�Z*	��\�\�*eJ�\�FoC�L6�&�q�퇕�\�[���\�T-֬<C��\�\�y���q\�\�l&doj\�|\�޸ǶwMl�.\rx\�%#�=�:IaU�KV0���V(\�3pQ\�\\\�#$�@�@��]�8���\Z�\�\�@\�$D\nv\�U\�\n%�LX��Wc\��ma\�*��)\'P\ZOy��«)p\�2�2/�,B\�1���\�$�$�I\��x��,�\�h��J\�\�~\�utf�	��\�	_=�\�Os난U\\:�e߻�H\�鶊lЍ�$W\ro�\�d\n�\�!\�\�yCVڐjd%A\��7BҎp�\�|��\"k��r��\r\�@]�\�k#\��~\�6��h֡&\�y�0&\�0��6(�0���^I�*��<\�o�\�\�P����\�\Z\�(c=V�D�ؼ�\")I���\��z\�ǳ\�V�\���&�6�<2\�\�p�Dk\�\�)�c�|�\�5��LtT�+D\"_$r=\�x\�D-l���\�t�\Z9�����\�H�꙯���\�\n�V@Aޛ7f\�Ȳ3ymE\�\��:h��\�`��ح ��\�!\�L�E Brb�P�\�\�uXl^�a\�\�a���b��T\�P\"�Ɇ2T�\�Z�rR5\�T�vs�h�Fl�$M�W²2��\n.����q���?�\�\�\�\�\��	�M&\�\�\�\�B\��HnT\�^�8ǉG\�H;m����2�\�6�u\�\�$et\�-�ã\�\�4�o�\�p�~���\�_�pk6�U�yr�\����ɰ[\�\�kڧ\�\�6J)�\\\�_�\�4�A\r>���A�\'G�U T]!�!`\n��耺O\�y\�\�\�I\��XZ\�U!�a\��)�c|x�@y�6�\�\�ج$�\r\�W#$\�Nb\�\n\�I\\�E�d�\np����\�WN\�ٔ5g�L\�xt�$I\�T�T5�vuY��\���8Ʌ��6���*\�\�6A\�m�-�qn�>PAU\�D\�9��f\�0�-X��H\�ݖ�t%�Am�J��1�@=\�@>�A�1>�D�PP{Ѫ��\�GFJ�\�bj�\�.A\�Q9\Z=\�\�+�R\�*\"\ZK�W\n\�$�V�\"��l�*�ANU\�\�\�A��|�\�&���\\��i�=�o\�U��k!3\�E�\�C�$aH\�6�Gn&(�h]\\`⏧IV�����}\�fl4&��� ���`d%\�-�m��\�\�\0\�\�\��V�*��Q�x�\��\�PI�)�{_�Rj\�\�&_�V\�p6\�\�#���h<gYYj�~��`��t�\��D�Ғ���%]%*�l���\�4�gd��2\�&�(��kBqGh��P�}�H\"]2�_@\�4\Zνp��o�\���#\�QT��2��{���Lm\\�\�\�߷��\�i1\�\�\�R\�͔�WO3��\�BК\�G�z��gF�\��|z�\�硖�\�yk[,\�N\\\�P�ߛ\�\�Y��=v\��j4\�(\�F\�\�Ʋ�|\�6�@cH����\�=KImu��LǙ\�\��G$/C\���E\0~X�qo)�+��j��\�¦�[�MVݔ\�\n�q�Zĩ��\�R��\�\�*h˒&^>�w_�r~0e++M�\�L��>�\������w��̡qp�\��\������2e�\�v�䦭��5�\'�	\�!\�\�\���A��/�>c\������A~\�^L1\�\r&\�Q6�|�\�P �\�!)�\�f\�\���loZ\�f#D\��&�\��O:)#��i_.��$KieF\nE���\0\\�}d=�QR\Zh�@kÆ,\���\�Y[9���[\n�uF;��a4�s\�:�g�G�r\��M�	�\�9X\�BV\�.�D2��\��a�\�ѕ�}\ræ:	��&�,��u),�p��ΡQī	A>��\�\�|���+�eFuQ$��\�M��R�d�U5}g^�j�B\�7FS�\�\�\�\�[b�:\�\�\���;X��B��=�G WB.�#k\�8�80\�\�-�\�\�\\�\�x6�7�\�\�N�\�\�^�h��n_���r~=\0��-\�Q\�s�\nN]\\B\�k%z{F�:\��aC�\�\�\"\0L2��\�H\�&YM\�	��\��[$\�v!7\�A͉\��\\Ѷ�f\�\�SL\�^(\nČ~a�\����\�.s\�\�Ş�$\�2\"4%|g�ڟL�\�Tl\�׬\\��_l�{#�o�mdҼ�?L��YkT,�\���\�\�}\rT��Ou[�M�N�\Z�Z�j\�\�\�\� �!\�#x��w# ��v��;\Z2#+밋vJ�Gl\rp\�\�\�.Ҝb}ev�4\nW)\����8�S\�\�o\�\�}�v\�Pae~\�s�9T���ɍ��&�ɍ��G\�Y�\�,\�K-�|s�$�\�!s\�\�?L3c�\�!�j�o�0���R\�ĒB3@0<Bp_\�ThL�(�Hro\��O��h�\0�OOr���@\�\0\0 \0IDAT{3)�eJ8����V�k\�e\�O�g�\�~�M\�*\�\�\�ڭ�\�u3.\�G[j�;l�W�\�i ]i\�\"�	;I!��\�*�\�,��<�tbI��\�����X\�,1eL��+p~�A\�SÌq���\�y��\�9� ԃ��9d�0��j�@&DWC}�XA��\�=Xj\�/G�(\�W\��M�.7�\�/����r�;S��wO���v��L4��,E�\�D��`\�1��)�}\�\�5�.�4/��%\�\�VU\�s��p{�(�+�Z�.w\��{\�\�y\����䝆��s�\�f\n	\�\�\�W/k�&q�E�\�4|�)ح%8�E�@\�$E,%�ٌ�˱)\�\�m�H> \'�Pľ\01(1$6\�qC�Ё<T.iT*W�t7BEt�*\�f\Z\�e\�\�sf�x\�w\�\��7�\�@\�rwv~>\��\���\�\�?\�>\�:�H�\�,u\�\�ZJ\�uF)�I��t;$]�\�s�\'\'8�Ǚx\�$g�������Y\\`\�œ�\�4��\�\�K�$�\r\���;��U\�\�cG��\�u��RL��Xx�*\�	�G�B��Wj�@���\�+�Ѭ�F�\�_u\�\��p�>�\�C2�\�l\�l9�\��\�j��\�X \�S\r��\�$���\�f�Y�dk\�y����t\�7.TyU�a>�\�\�]���\0\ZBOG�ʷ4�l\��_jѪ\��N\'�s3&)Y����\�\\�<y�����z���K\�\�/0�8\��\�ϒ�h=~�\��\�\��vRv�\�\�1n\'��6��\�5I\�.F�`��Y9\�՟#mD\�1\�P�$\�+��eHpo�\�ո\�H\��a�AI\�n\�>��\�5�\�%\�^\�F\���\\��N)\�\�!Y\�8}��\�\�Mq�\�35Iֹ3si$5�R=�Uϫ��:=���\��\�\�n�Nb�/w���)�\�\�\�$Rur\�(��\�K��X!\�C&�\�45Wk	�[	\�N�7Kz�=-\�d\"�B�&�\n�ez���(!Xx�<K��\��UђǗ\�~q�g\�\�(gؠ��O���B �ڶ�F�A7Wp\�3K)\�9�\�dy�/����@�tqy�_E�\�j�\�s3uDډq)*G\�\�R��S�\�nƴ�>�3&2\�\�0(�\�hD�u*)A\��do\r�\0���RU\����1�v\�$\�K�\Z���Y\�\�m,c\\]\�T4�թVTCp\�3L��8��	\�m�N����1[���Qw�k\�U��\�\�k�-�\�Qr#F\�\�^�����\"\�	HI42B҉N�<lj��էT�A\�\��f.\�s��,)��+\�j#�\�u\�����1�Ol!��1��̼5_Ws���	\r\�����@\�l��\�\�\r\�oEJ)��圣ő����\��\�p\�\n�\�SW��vwɍOH\�+\�u;\�H�\�-�+ :8�m���*_(F\���kh\�\��\�!�\�&�f�A\�\�8�Մ\�lMǺ���af=\�\�9ɂ-w~�*�#\�h=9��Ȝ�\�FZ=.���Bh�\�!PE�Q�\�ƭ[P�dj�A�,�9Y�p�ŗJ\�\���\�\�^�ͥxd\�g\�ڰi���J\�wy?�$�n\�\�A���\"Up\�	�����\���\�II��\�vJ8//�x(T\�\'�\�5Q\�ц{޾�P=p �_� �[I������`�\�\��\rm\�\�\\Z��%�m�\�l�n�h\�Z\���~uT�Rj�\����Gо���\�����hp\�\���#\�\��\��\�\�9}���\�\�\"\'-TY	\"v�\�\�\'ܧo\Z4D	�\�\�\�Ul=f�Rm\r�\�V�z�X�o\�«�\��^V�\0�\Z=m{8b\�3\�v���M\"\�:�\�=�\�t�\n ]�i�_R�!�z\�?�$�\�I��\'�ጝt1��r%��\�\�\���4g��,\�rA|uyC� \�$\�j%M��I\�\�#DCI�\���![|��\n�j�\�b��Y�}\Zr���e��G?¥��:��a\�ܺ\n \�Oi_[\�\�vM\�G\�&���8.tt`�0H;ImՄ�5�{CR�\�\�Hג�}�;��\�M34!���\nɩG&@�\�9x\�g\�\�\�\��\�c\�QW\�ZZSM���Aʥ*h�\�[st\�n�݈\�@\�\�y��\���X/\�\��#L\�_`�\'�\�D	+$o;\�R9��U\�\�f*�\�l���j�̐��P[{6vv+զ��n�BmksK�of�ck\"\�\�\�P��\�z��f�v\\�-�C-Rq{��L%r(,�\�҆\�\�_9\���\�qfy\�t\�W��z��\��Ί6�\�7\�eʬZK�~�py�\�o0}�r��\�w\�5hA��y\��\�_y�Y��u�\�*��;=d��>��\�\�mm\n�3\��N\��\�k�R*\�ra�=�@��9��Σl�Ѝ*6~�\�ٻU�\�0B\"�k�C_u�C�\��|\�z���\�:Uٰ\0�\�<�<�����R7j\�{\�E]͌�\���=\"y�\�\�\�\n\r�`�?�9��\�TNn\�m\�\��-\�U��of�@�\�hW\�W��`�aK�\�j�ۏB\�\�+l\�󵭖�i`q��$�f6{\�5�\0Pxa\�\�I�U]UոmA5F\�P��\��\�`\�\�\�m\�\�\�:�\�\�\�ts��\�K��8�\�g��Gt@\�(��h�OT)\��\n�쉟���\�W���\�3L�\�L���)��\�^t���o��;\"�ٮ��R\n|�\\���\�C:�#��\\1lT\�NZ^)զR�0\�\\zŗ�\�\�\�^���9T\�E&�3�\�#��Ѻ_\�v�(=7!\�\�\"�Q��6J�\�z�\r�\n\�ml�\Z#)](dߗ��\\fZy{��\��\"̵�Tdq\\ϋQ924P\�h,j_m�F�\\\n)9��	�=L`Pv+!:0R�drcc��\�S�/9ꪫh=qLϲ]n\�>G���8�Y�!�\�VB66�\�6ʄD����\Z�ɭ\neR2�\�c_9^��&P*̽p\Zo��;�ȡ`S�:F�r���V90g+RiӃ!�_��l\�Nچ={\�\�l�q\�-�F�K\�&\�@\n(\��Dң2�$/e�٧O�w�6%H)E8hP�MV�7(��59�\�g�\'c,|g�\�\�{��U\�\�de�U;O����\�*\�\'\�\�x�\�cĖ\�ެ$�\�*½M���fӊF\�K�Q3B�\�\�Evi92��\Z�\'�\'娲\�\�*�T�\�F[.��]�\"M�!#!\�)�B��\�s\�},�T	�%7\��|�\�N	J\�(\�\�\�PG)���XV_\n!�1�\�9�yc��o�d\�q��ƈ��\Zb\�14\�k�פ�:F�\��ୋɻ}2(=LW\�$��\�\�q\�/\�-.�H�N�4��M��v�*@\�	Y��G�L|���𽳌=<Nb\��\��y�\��\�\�ǀv~�\�\�\��\�\�\�\�n\'�4#\'t*\�\�p$�~�\�$W�\�UB_Z@\�֌�ތ�I����~0W�lu\'ժ\�J�\�\�8����Ar�\�3�y`\�D\�붓0\�a�E���\�\�:�Q]��횺��\�[ܠ0ڛc��\�$\�\��\�\�\0��\�>;Yg���C��\'`�\�|m�\�jTJ\�1(I;	\'�J0�·N\���y\�^?�\�K,(ـ\�\�}���}\�M��7�W�e����nS����2�O��6H[�@\�a|sc�\Z#[\�\�Or��RD�\r\�\�<x󰒛q-\�\�\�,%W\�\�p4��\����pwD|��\�e���Ų�XydIUVᄱɒ\�r�\�\�j�-Vk	Y�6\�||e;�\���G75�}$3�f\�P��\�?̉��L�?\�\�\�S�N��\�\�M,.\�@���W\�ZF�N_\�~T�\'C\�M�\�k�\�Q:�_K�-Sm70R��<I0�l\�\�5\�ِ\\�\�S�k�\�+\�q_\��*�\'��\�&q?׉ca\�QT=\�*t��ZER�\�d�cca�\�֊N\�\�q\�>Š\�6��\nU(<���u��v�@ʞ�PY��}�՘�\�\������{H\�0��\��Z\�\�\�J\�{\�]6�6\�>�$���P��0\�ǚ��_�M\�>I���_�CM�tJ�\��DC\�\�~��,\��\�[�\�F=�\Z:~\�I(+\��>�u^�p��It�8n\�6	�����Z\�sV��\'&�\�sT�\�1M5\�!ì\��aW�\\L�Ĉ�C�y9���\�Z\�\�[�,�v�\�{B�܌�:\�\�\�/�`\�k\'i�9�)c��7��Ͷs%�,�ِ���B/!%Ҥ\�į�߸�3Y���\����g.n���j��mm�>ߙT�\�\�+\�Z��&*nVBt`_\�\�m\��#%\Z��[[�\0�A\�B\����\���\�HHm}:0��8�o�g\���>~�Ď>6^\�L\�D�Yw��\�(�\" ���z/\'\�$t\�tM�\�\�Wϱ�\�lM\��\�b[ڊ!����\�P���Fd��P�asWD\�L\�V��8�-�:�D\\^ҹ\�Z�뽹\�9�|-E���\0�\�e\�jv\�ML��\�Db\�\�v\�f�fJ��`|�\�a���u�D<#N\�Z�sq�Vy]\�d�\�JR�B�\�\n�ĨBӄs\�\���C)\�5�*^~}�T#y�#��������1�_��s�MZ\�}�TH�[����<!��H\�10|�\�ʥ�r1Y��|b���\�0��\�\"��nqo�d$W0l�y�\�\���wM\�ߕ�\�K���\�n�hw��\n�\'v	�����M\�o-\�ʎ-:�v�\�\�\��\0\�yLj�\\m\�?b��s�Q߭\'U�\�zh���\�x��\��\�-}r��\�n3�\�,K?8oT1�q:\�ҥc��\�\�ݎ\�*IB��;L���P��\�R\r\�Z\Z�f��6Y��S��Y�	��$���i����x�ǔ&��\�M+wi#A��\�\�h�\�\�R\�M\�b�2�B\��>=\�\�[sU�T�G\��jq�K\�*�{GH��i>4�W\�.�p���\�\�{�N�Ud�h\�m�]\�6J�?L��d\"�Ť��ܵd�\'Cq��9���\�`e}�\�x��K\�\�\�\�2c��\��A@z3\'Y�I^i#����b\�\�#ė��/\�N8\�Ԁ\�&� v�s�\�@Y@W�|f\�@��:��u\�5֭���񾁑F���xF�H^i��t�\�+{�\�\�\\W�V\�Z���\���\�㾔dI�\�:l\�ߝ\��J�5�V�\�\�\��Wl\�{}1�\0\�TDAD\�I\�\�Gh\�zd�\�OO\�II�/\�\�\�S(`�\ZL�Ð�Z�\�z)\���.&�\�k�d�	\�_:R\�w\"�uS���2T\�\�Ui*n\�`O\�\�xv��\�\�#Ћ\�F�)LE�ms�70R3K��\ri�dK�\�\"\�0�3]M��\�\�R\�}�	�8��w�\�m�@hw3�\�&��Br%&\�tt.vs��-E�B�\�\�ۭ͌< �]bR�-��FL~}��Wg�{�<\�\�>ͱ/�}u�\�Z\�^�1�\�o\��\�\�\��2KWV8����uԚe\�i11~\���\�Z��d�=~�xq�p�(\�Z���6\�}\�\��H\�\�\\s9��\n�X�ixz�6\Z-\�\�}Mm7��\"(�̅\�:D����NgWY\�		t�\�\��3�����z���C\�T\�\�%\�\�j-!�\�R\�L���}֙\�+\��lv�Dk�\�i^?\�\��+�׉o\�d�b�?z��o�d\��$\Z�8}����8��Y\�\�������G\�TJ\�\���e|x�s��\�\�\�yf�y�\�v¹o�\�{\rv��Bq\nȤ�B�M��\�\'�\0�)�ݑN�/*�T�\�\�\�?���!�1�\�\�ǡ\�(SUEIc�\�\����`H\�=��\�yC�\�\�>.)L^���\Z�i��AKO��IW\�z\�yBn\"�/J�m��iu3��If\�\�\�PZBtû<.\\Z\��I\�ʥ%\�\' N�q�g�e�\�\�p\�\�)\��>n�0q�\�\�N}e��\�2/]�1�͘�C��\�\�\�˥�iUl�Z+[нw\�{m�%��Z�@�-�cѾ� \�Ҕ\�\0��Gڤ*\'1\�qd�\�Qj�Sp���i�.u^?\�\�\�gt>�ж��ur�f�oίu�\�\�5�6\�?ԣaJ@%6ӛZ)�W-6���\�]Ҫ\�m\�B���`\��q><\�췞�L>9\��\�&8�\�Y\0\�4\�R�\"I\"�1>\��Z,�ɯ>w\�>C�\�\�ġ5==ř?9E�`\�Q�o,#ī\�i����\�R\�s�۹ۖi��v%���\�\�\�G��ǎ\"�\���gy�\�Ӥ�o���M#\�=U\�Az��\�[\�@\�Z9A\�\�*\��SE�\��)�\��\�\�l\�ǯ�1qL��_��d�0�^8\��\�\'��A0�\�)��1�߿�\�+gu�>ǿ9C|e	o`�\�sX\�1ٍ��=!��\�99w`�8M���\�j\�B0<0@($��1\�0���/\�\Z\0�a�����>\0�\�a\���\�T�\��>ـ\�A\�\�_A?�n\�\�\��R\�\\�#O\�ȓǶ����\��D\�͘\�K�s���e�Z��\�X[�ڂ!y\�ѵ\�Ɇ\�8�N\\^x//&\��hk0D(\�T�s�d�BF��\�\�o�b���̿v��V\�\�g��<\�\���wI�d}�\�\�}��?{I3�\�R�\�KD���<\�*\�Ty���^u\��݈:l\�\�\�K�� �4!�aHd\�wL����H\��jZK*\����t��/�\�\�\���\�Z��\�0boT�� �D�\�]\�9��g\�t\�5^�2�L�8�\Z�\��,�����\�m\���M�Ui�LT�\�F��������v8�\�gX|s�\�Qf0��:�u�\�f��\�\�\�,g��2\�\�T�>���>����\nUJ�q\�B�\�9���Ӏ�-\�D\�c$��z\�6h���{\r}�{$���>+z�ty�ѯM#�n:\r){{��GƑ��}�>2�3�\�\�\�7��\�)����/�͈\�O�\"}	o�\��\�yA�3�0(\�\�p`\08�����\�y��\'P\n��ܤ�\0\��\"9��p$��<��\�,�cc��諊��ڠ��\�\�PXw��\�/v��4�7Bu:,<u�rr\'��:/4)Lu��(\�b�\���\�j\r�\�R\�v�\�e�\�\�\�I�%#eWۿ>�\�8\��;��\�dW�D\�H(j\r�>����\0\�F�Ll\�!��Y\�S\�W�jh\�\�\�C�Q�M$����,�Պ�]S\n�\�G�.�m���>\�ť�=\�`�^�#Az�\�\��-\\~C�K���q�v��\�\�C`��9=M��;��!�l�e\�>Da.\�\�Un�#]�q�\�Q��.��\Z�N�\�n���\� \�\�\�@9a��k�䪋\�칡��? \�ԏc�\�PDOl��ߌ+w}\�y(\�B\�\��4)\'�Εe\�:剸7\�\��R�\�s�]���\']����L\�\�*�n-\�\\\�{=\nB\�7l\"��\Z�4n��{\�n�q?\�l��\�P��0\�}������Zn�Ӫf9\�S�TN��{5&x�\�QIJѹ��\�\�%�����3~L�\�U?\�j\r�	\�����4�ϱd�~��Z%IP��!L�X�\"b>���\�\�	�\n�W�T��N�Q#�T(�B6��$S�\�xJ\0e\�3\�l���}s\�iO�+�@)���\Z\�IE&�f��}�ز��\�q�]:GK7c\�Me��%�ُ��D�01,\�z6V\�Zif=>\�]\�R9\���\�ĭ�+\�F��_b;꼽L\�I𺪪3�F����7㧶\�G`t�ߙ{uNw��&�\��c�k��y�����\�Jj�4�K5QS\'�\�k	���x�\�n[T\�a�t�ƶ~��\Z�I9U�}\r�;�:|S?\�7�$��+ U:�>���?%%Ᵽ�\�%Z]\�\n��%K9\�i�^�|.Tep=2�T�\�\�j\�Y�3RW�@\�\��\�\�m�9����\�M)wr��r���\�}�\�o�sk\�o&+�\�\��R\"\�t�\'7A�\�a\��\r\�O\�c5S�\�*&�\0:\�+�N\�\\��O-��\ncĊ�(�u&�(<��=�д[Ȇ\�5�8�I-iE��ŲS�\�_\�\�̖Ԑᴛ\�wS8r�so\�3v;!,L~U��eΕp�J�8��\�H=+�`\�Jl��!�T+(����k\�1��k���XP\��톸�y\�\�S\�N��\�\0x\�#߈..Lך4`nM!\�\�H\�\�\�ڝ�\"<���d0\�amS�eQވ:�%\���\�/z\�|\�~ְ\�\�/H\�ǋ,Jk��~\��f\��Ea%Z\���~n���Kw\�RF�L\�h\�\�储��cZ+6(�d8ˌJ\�k�\�}T�\nPk=�GA`<Z��]��\�7\�P�e\�<6QdB�A��ց��N?;�/��\�?�\�-��Xj����\Zـ^��\�\��(��Q[�Ԁe\\\��\�\\�*��Ku,0�<�JsUH�iC�\Zͮ2��h\�TQ�\�y����j��\��\���\�6\�%��\�\�+�ķb\�;	IW�n\�DYJX@p���^O�;��\�*c+٪\�ZcR�\�ѭ�U`\ntƮ�\�v��\��ϳ�\�\��hߌ�\�\rD�Dw�~v�\�B\�0\\=0\��av�.;e$�\�F\�\"^�v\�\�yBj#��2f\�L�\�!�.\����$K�� d\�\���\n֭�\�5B�,݌/{\r=7M�x���f�Wi���6b\�~�\�=c\�p&	�I\�\�.�*>\���5!\�\�;2\�}\�=���ʕ\"[��wd�B\r�nF\�IIlv&u\�tI����{	�g�7\�0DJI��h\n�,#.r�>Q7Et\�\�\�}�\��d������t9��Nr\�\�*�����R�N���\�;��l-eiyy}yyi=Uj \�2\�\Z94F(�r��R�\�\�\�\0~\�\\޻h�ݲ\�\�V�O���3X���6�:\�Q\���\��\Z\0>�R��\��W�\�xN]�wR��L7�\�Le�%�.�҉�*_�;\�\0�Z�r�\�\\u_����\���\0\0�IDAT\�Tx��XW�b@	O3w��{#��4�C�\�u2^m\� \�\��G0�\�\�?�ρ���\��4�\���e�\�G�-\r����&��~WJ�\�\�|�̿��gcXB\���1j\��\�~��\�r0%U�:;\�\�ŠN�G+���}R�*��d-!I\�ߚ�\�ſX��%�7��\0~�\�L��C��#�rd\�~�\��!�[c�}9�\�\�?�� ��\�\�\�\�Y�\�Uo��\�f�G�7*��E��m\���P\�ݜ�VL�Z�\�\�+\�N�\Z\�V]���Va��+4}$�~�d\�hu��=h\��1\�Sh&�R�f�CbPx�\�2\�����.!\�]�\��ǅ%cy6�aԏCK	��*En\�\�*��<\�\�\�\��N�\��Y��?�o\�?ɲ,\���\�}t\�O\�\�\�\Z�\�h���\��|\�H�\Z@3��f(��_?���<�|��L�.�\��\�n\�g^\�~��S=\�w\�\�\�\�_�6�\��\�P�;*Fx\��o��\�L�f�w\���5���\�~G^\�G��\�\�\0s|\�0��b�O8\�UR\�!\�\�\�T\r\�d��\�:s�S=\��\�{�\�z]�C3\�{hF�߽k\�\��\\\�\�\�\r��>����\ZT\�\���y�1�\�2\�@\�ԁ���?��\�w��\�d?��̆�\�\�\�w�\�\�\�>b��܇\�\�s޻���\���\�{\�o\�\\P1����>ۺ�\�\�\�G1ү�z\��f��\�\�\�g��f��~�K\��5�\�\�%\\I\�\0\0\0\0IEND�B`�',1,1,1,0,'','',1,0,1,'1234567890124/1,1234567890125/1,1234567890123/1',0,1,0,0);
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
INSERT INTO `transactionitems` VALUES (5,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nacho',0,1,'',0,NULL,0),(5,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(5,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0),(6,1,1234567890124,2,0,'Pc',10,20,0,40,'Doritos Nacho',0,1,'',0,NULL,0),(6,2,1234567890125,2,0,'Pc',5,10,0,20,'Coca Cola',0,1,'',0,NULL,0),(6,3,1234567890123,2,0,'Pc',5,10,0,20,'Herashey bar',0,1,'',0,NULL,0),(6,4,1234567890126,1,0,'Pc',20,40,0,40,'Paq 1|  1   Doritos Nacho|  1   Coca Cola|  1   Herashey bar',0,1,'',1,NULL,0),(7,1,1234567890124,1,0,'Pc',10,20,0,20,'Doritos Nacho',0,1,'',0,NULL,0),(7,2,1234567890125,1,0,'Pc',5,10,0,10,'Coca Cola',0,1,'',0,NULL,0),(7,3,1234567890123,1,0,'Pc',5,10,0,10,'Herashey bar',0,1,'',0,NULL,0);
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
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,1,2,500,'2016-01-16','09:28:00',0,0,1,7708704,2,1,'-NA-',100,'1234567890123/100',0,0,0,'-NA-',0,0,1,'',0,0),(2,1,2,10000,'2016-01-16','09:29:00',0,0,1,1970730888,2,1,'-NA-',1000,'1234567890124/1000',0,0,0,'-NA-',0,0,1,'',0,0),(3,1,2,5000,'2016-01-16','09:30:00',0,0,1,7708704,2,1,'-NA-',1000,'1234567890125/1000',0,0,0,'-NA-',0,0,1,'',0,0),(4,1,2,20,'2016-01-16','09:34:00',0,0,1,7708704,2,1,'-NA-',1,'1234567890126/1',0,0,0,'-NA-',0,0,1,'',0,0),(5,1,1,40,'2016-01-18','21:52:00',40,0,1,1,2,1,'',3,'1234567890124/1,1234567890125/1,1234567890123/1',0,0,0,'',20,1,1,NULL,3,0),(6,1,1,120,'2016-01-18','21:52:00',120,0,1,1,2,1,'',7,'1234567890124/2,1234567890125/2,1234567890123/2,1234567890126/1',0,0,0,'',60,1,1,NULL,3,0),(7,1,1,40,'2016-01-18','21:53:00',40,0,1,1,2,1,'',3,'1234567890124/1,1234567890125/1,1234567890123/1',0,0,0,'',20,1,1,NULL,3,0),(9,1,1,10,'2016-01-19','13:38:00',0,0,1,16424376,1,1,'NA',1,'1234567890123/1',0,0,0,'NA',5,1,1,NULL,4,2.1301104714e-314);
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

-- Dump completed on 2016-01-19 15:38:30
