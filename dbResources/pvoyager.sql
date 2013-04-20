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
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
INSERT INTO `pv_searchwords` VALUES (5,'しましま',7);
INSERT INTO `pv_searchwords` VALUES (6,'土星',2);
INSERT INTO `pv_searchwords` VALUES (7,'衛星',8);
INSERT INTO `pv_searchwords` VALUES (8,'サイズ',6);
INSERT INTO `pv_searchwords` VALUES (9,'大き',6);
INSERT INTO `pv_searchwords` VALUES (10,'半径',6);
INSERT INTO `pv_searchwords` VALUES (11,'直径',6);
INSERT INTO `pv_searchwords` VALUES (12,'何でできて',9);
INSERT INTO `pv_searchwords` VALUES (13,'何で出来て',9);
INSERT INTO `pv_searchwords` VALUES (14,'なにでできて',9);
INSERT INTO `pv_searchwords` VALUES (15,'なにで出来て',9);
INSERT INTO `pv_searchwords` VALUES (16,'素材',9);
INSERT INTO `pv_searchwords` VALUES (17,'材料',9);
INSERT INTO `pv_searchwords` VALUES (18,'磁場',10);
INSERT INTO `pv_searchwords` VALUES (19,'オーロラ',10);
INSERT INTO `pv_searchwords` VALUES (20,'月',8);
INSERT INTO `pv_searchwords` VALUES (21,'moon',8);
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
  `pvv_sex` int(11) DEFAULT NULL COMMENT '性別, 1=male, 2=female',
  `pvv_scene_id` int(11) NOT NULL,
  PRIMARY KEY (`pvv_id`),
  KEY `pvv_value` (`pvv_value`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_values`
--

LOCK TABLES `pv_values` WRITE;
/*!40000 ALTER TABLE `pv_values` DISABLE KEYS */;
INSERT INTO `pv_values` VALUES (1,-1,'えっ、どこのこと？もう一回言ってみて。',2,0);
INSERT INTO `pv_values` VALUES (2,0,'何も思い浮かばないわ..もう一回言ってみて。',2,0);
INSERT INTO `pv_values` VALUES (3,1032,'木星はとっても大きかったわ',2,2);
INSERT INTO `pv_values` VALUES (4,1028,'木星はしましまがきれいだったの',2,5);
INSERT INTO `pv_values` VALUES (5,1056,'木星はほとんど水素でできていると言えたわ',2,3);
INSERT INTO `pv_values` VALUES (6,1088,'木星にはとても強い磁場があったのよ',2,4);
INSERT INTO `pv_values` VALUES (7,1040,'木星には衛星がいくつもあったの',2,1);
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_words`
--

LOCK TABLES `pv_words` WRITE;
/*!40000 ALTER TABLE `pv_words` DISABLE KEYS */;
INSERT INTO `pv_words` VALUES (1,'木星',1,1024);
INSERT INTO `pv_words` VALUES (2,'土星',1,2048);
INSERT INTO `pv_words` VALUES (3,'ヘリオスフィア',1,4096);
INSERT INTO `pv_words` VALUES (4,'リング',2,1);
INSERT INTO `pv_words` VALUES (5,'模様',2,2);
INSERT INTO `pv_words` VALUES (6,'サイズ',2,8);
INSERT INTO `pv_words` VALUES (7,'木星の模様',2,4);
INSERT INTO `pv_words` VALUES (8,'衛星',2,16);
INSERT INTO `pv_words` VALUES (9,'組成',2,32);
INSERT INTO `pv_words` VALUES (10,'磁場',2,64);
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

-- Dump completed on 2013-04-20 23:14:11
