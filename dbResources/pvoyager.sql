-- MySQL dump 10.13  Distrib 5.1.44, for apple-darwin8.11.1 (i386)
--
-- Host: localhost    Database: pvoyager
-- ------------------------------------------------------
-- Server version	5.1.44

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
-- Table structure for table `pv_searchwords`
--

DROP TABLE IF EXISTS `pv_searchwords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_searchwords` (
  `pvs_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvs_sword` varchar(10) COLLATE utf8_unicode_ci NOT NULL COMMENT '検索一致語',
  `pvs_word_id` int(11) DEFAULT NULL COMMENT '結果単語',
  PRIMARY KEY (`pvs_id`),
  KEY `pvs_sword` (`pvs_sword`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_searchwords`
--

LOCK TABLES `pv_searchwords` WRITE;
/*!40000 ALTER TABLE `pv_searchwords` DISABLE KEYS */;
INSERT INTO `pv_searchwords` VALUES (1,'木星',1);
INSERT INTO `pv_searchwords` VALUES (2,'もくせい',1);
INSERT INTO `pv_searchwords` VALUES (3,'Jupiter',1);
INSERT INTO `pv_searchwords` VALUES (4,'モクセイ',1);
/*!40000 ALTER TABLE `pv_searchwords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_type`
--

DROP TABLE IF EXISTS `pv_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_type` (
  `pvt_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `pvt_type` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`pvt_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_type`
--

LOCK TABLES `pv_type` WRITE;
/*!40000 ALTER TABLE `pv_type` DISABLE KEYS */;
INSERT INTO `pv_type` VALUES (1,'場所');
INSERT INTO `pv_type` VALUES (2,'特徴');
/*!40000 ALTER TABLE `pv_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_values`
--

DROP TABLE IF EXISTS `pv_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_values` (
  `pvv_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvv_value` int(11) NOT NULL COMMENT 'key',
  `pvv_result` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'voyagerの返事',
  `pvv_sex` int(11) DEFAULT NULL COMMENT '性別',
  PRIMARY KEY (`pvv_id`),
  KEY `pvv_value` (`pvv_value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_values`
--

LOCK TABLES `pv_values` WRITE;
/*!40000 ALTER TABLE `pv_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `pv_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pv_words`
--

DROP TABLE IF EXISTS `pv_words`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_words` (
  `pvw_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvw_word` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '正確なワード',
  `pvw_type` int(10) unsigned NOT NULL COMMENT 'ワードの種類。pv_typeテーブル参照',
  `pvw_value` int(10) unsigned NOT NULL COMMENT 'ワードの値。pv_valueテーブル参照',
  PRIMARY KEY (`pvw_id`),
  UNIQUE KEY `pvw_value` (`pvw_value`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_words`
--

LOCK TABLES `pv_words` WRITE;
/*!40000 ALTER TABLE `pv_words` DISABLE KEYS */;
INSERT INTO `pv_words` VALUES (1,'木星',1,1024);
INSERT INTO `pv_words` VALUES (2,'土星',1,2048);
INSERT INTO `pv_words` VALUES (3,'ヘリオスフィア',1,3072);
INSERT INTO `pv_words` VALUES (4,'リング',2,1);
INSERT INTO `pv_words` VALUES (5,'模様',2,2);
INSERT INTO `pv_words` VALUES (6,'サイズ',2,3);
/*!40000 ALTER TABLE `pv_words` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-04-20 17:18:38
