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
-- Table structure for table `pv_scenes`
--

DROP TABLE IF EXISTS `pv_scenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pv_scenes` (
  `pvc_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `pvc_path` varchar(40) COLLATE utf8_unicode_ci NOT NULL COMMENT 'link path',
  PRIMARY KEY (`pvc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_scenes`
--

LOCK TABLES `pv_scenes` WRITE;
/*!40000 ALTER TABLE `pv_scenes` DISABLE KEYS */;
INSERT INTO `pv_scenes` VALUES (1,'ex-jupiter-01.html');
INSERT INTO `pv_scenes` VALUES (2,'ex-jupiter-02.html');
INSERT INTO `pv_scenes` VALUES (3,'ex-jupiter-03.html');
INSERT INTO `pv_scenes` VALUES (4,'ex-jupiter-04.html');
INSERT INTO `pv_scenes` VALUES (5,'ex-jupiter-05.html');
INSERT INTO `pv_scenes` VALUES (6,'ex-jupiter-06.html');
INSERT INTO `pv_scenes` VALUES (7,'ex-jupiter-07.html');
INSERT INTO `pv_scenes` VALUES (8,'ex-jupiter-08.html');
INSERT INTO `pv_scenes` VALUES (9,'ex-jupiter-09.html');
INSERT INTO `pv_scenes` VALUES (10,'ex-jupiter-10.html');
INSERT INTO `pv_scenes` VALUES (999999,'dummy_good');
/*!40000 ALTER TABLE `pv_scenes` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=MyISAM AUTO_INCREMENT=225 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
INSERT INTO `pv_searchwords` VALUES (5,'しましま',46);
INSERT INTO `pv_searchwords` VALUES (6,'土星',2);
INSERT INTO `pv_searchwords` VALUES (7,'衛星',8);
INSERT INTO `pv_searchwords` VALUES (8,'サイズ',6);
INSERT INTO `pv_searchwords` VALUES (9,'大き',6);
INSERT INTO `pv_searchwords` VALUES (10,'半径',57);
INSERT INTO `pv_searchwords` VALUES (11,'直径',57);
INSERT INTO `pv_searchwords` VALUES (12,'何でできて',9);
INSERT INTO `pv_searchwords` VALUES (13,'何で出来て',9);
INSERT INTO `pv_searchwords` VALUES (14,'なにでできて',9);
INSERT INTO `pv_searchwords` VALUES (15,'なにで出来て',9);
INSERT INTO `pv_searchwords` VALUES (16,'素材',9);
INSERT INTO `pv_searchwords` VALUES (17,'材料',9);
INSERT INTO `pv_searchwords` VALUES (18,'磁場',56);
INSERT INTO `pv_searchwords` VALUES (19,'オーロラ',60);
INSERT INTO `pv_searchwords` VALUES (20,'月',8);
INSERT INTO `pv_searchwords` VALUES (21,'moon',8);
INSERT INTO `pv_searchwords` VALUES (22,'かわいい',11);
INSERT INTO `pv_searchwords` VALUES (23,'可愛い',11);
INSERT INTO `pv_searchwords` VALUES (24,'カワイイ',11);
INSERT INTO `pv_searchwords` VALUES (25,'イオ',18);
INSERT INTO `pv_searchwords` VALUES (26,'タイタン',12);
INSERT INTO `pv_searchwords` VALUES (27,'おおきさ',6);
INSERT INTO `pv_searchwords` VALUES (28,'模様',5);
INSERT INTO `pv_searchwords` VALUES (29,'だいせきはん',44);
INSERT INTO `pv_searchwords` VALUES (30,'縞',46);
INSERT INTO `pv_searchwords` VALUES (31,'もよう',5);
INSERT INTO `pv_searchwords` VALUES (32,'目玉',44);
INSERT INTO `pv_searchwords` VALUES (33,'大赤はん',44);
INSERT INTO `pv_searchwords` VALUES (34,'大赤斑',44);
INSERT INTO `pv_searchwords` VALUES (35,'渦',44);
INSERT INTO `pv_searchwords` VALUES (36,'距離',13);
INSERT INTO `pv_searchwords` VALUES (37,'場所',13);
INSERT INTO `pv_searchwords` VALUES (38,'どこに',13);
INSERT INTO `pv_searchwords` VALUES (39,'位置',13);
INSERT INTO `pv_searchwords` VALUES (40,'軌道長半径',13);
INSERT INTO `pv_searchwords` VALUES (41,'離心率',14);
INSERT INTO `pv_searchwords` VALUES (42,'生命',15);
INSERT INTO `pv_searchwords` VALUES (43,'生き物',15);
INSERT INTO `pv_searchwords` VALUES (44,'いきもの',15);
INSERT INTO `pv_searchwords` VALUES (45,'移動',58);
INSERT INTO `pv_searchwords` VALUES (46,'ニース',58);
INSERT INTO `pv_searchwords` VALUES (47,'Nice',58);
INSERT INTO `pv_searchwords` VALUES (48,'Grand Tack',58);
INSERT INTO `pv_searchwords` VALUES (49,'ギャップ',58);
INSERT INTO `pv_searchwords` VALUES (50,'空隙',58);
INSERT INTO `pv_searchwords` VALUES (51,'溝',58);
INSERT INTO `pv_searchwords` VALUES (52,'後期重爆撃',58);
INSERT INTO `pv_searchwords` VALUES (53,'隕石',58);
INSERT INTO `pv_searchwords` VALUES (54,'タイプII',58);
INSERT INTO `pv_searchwords` VALUES (55,'タイプ2',58);
INSERT INTO `pv_searchwords` VALUES (56,'TypeII',58);
INSERT INTO `pv_searchwords` VALUES (57,'Type2',58);
INSERT INTO `pv_searchwords` VALUES (58,'共鳴',59);
INSERT INTO `pv_searchwords` VALUES (59,'平均運動',59);
INSERT INTO `pv_searchwords` VALUES (60,'5:2',59);
INSERT INTO `pv_searchwords` VALUES (61,'Laplace',59);
INSERT INTO `pv_searchwords` VALUES (62,'ラプラス',59);
INSERT INTO `pv_searchwords` VALUES (63,'ガリレオ衛星',18);
INSERT INTO `pv_searchwords` VALUES (64,'カリスト',18);
INSERT INTO `pv_searchwords` VALUES (65,'エウロパ',18);
INSERT INTO `pv_searchwords` VALUES (66,'ガニメデ',18);
INSERT INTO `pv_searchwords` VALUES (67,'分化',18);
INSERT INTO `pv_searchwords` VALUES (68,'ガリレオ・ガリレイ',18);
INSERT INTO `pv_searchwords` VALUES (69,'質量',19);
INSERT INTO `pv_searchwords` VALUES (70,'密度',20);
INSERT INTO `pv_searchwords` VALUES (71,'軽さ',21);
INSERT INTO `pv_searchwords` VALUES (72,'重さ',21);
INSERT INTO `pv_searchwords` VALUES (73,'扁平',22);
INSERT INTO `pv_searchwords` VALUES (74,'丸さ',22);
INSERT INTO `pv_searchwords` VALUES (75,'誕生',23);
INSERT INTO `pv_searchwords` VALUES (76,'どうやってでき',23);
INSERT INTO `pv_searchwords` VALUES (77,'自転',24);
INSERT INTO `pv_searchwords` VALUES (78,'公転',24);
INSERT INTO `pv_searchwords` VALUES (79,'一周',24);
INSERT INTO `pv_searchwords` VALUES (80,'1周',24);
INSERT INTO `pv_searchwords` VALUES (81,'１周',24);
INSERT INTO `pv_searchwords` VALUES (82,'電波',25);
INSERT INTO `pv_searchwords` VALUES (83,'雷',26);
INSERT INTO `pv_searchwords` VALUES (84,'プラズマ',60);
INSERT INTO `pv_searchwords` VALUES (85,'トーラス',60);
INSERT INTO `pv_searchwords` VALUES (86,'極',60);
INSERT INTO `pv_searchwords` VALUES (87,'探査',27);
INSERT INTO `pv_searchwords` VALUES (88,'ボイジャー',27);
INSERT INTO `pv_searchwords` VALUES (89,'ボイジャーちゃん',54);
INSERT INTO `pv_searchwords` VALUES (90,'あなた',54);
INSERT INTO `pv_searchwords` VALUES (91,'君',54);
INSERT INTO `pv_searchwords` VALUES (92,'ガリレオ',27);
INSERT INTO `pv_searchwords` VALUES (93,'ジュノー',27);
INSERT INTO `pv_searchwords` VALUES (94,'カッシーニ',27);
INSERT INTO `pv_searchwords` VALUES (95,'パイオニア',27);
INSERT INTO `pv_searchwords` VALUES (96,'ユリシーズ',27);
INSERT INTO `pv_searchwords` VALUES (97,'プローブ',27);
INSERT INTO `pv_searchwords` VALUES (98,'Voyager',27);
INSERT INTO `pv_searchwords` VALUES (99,'Galileo',27);
INSERT INTO `pv_searchwords` VALUES (100,'Juno',27);
INSERT INTO `pv_searchwords` VALUES (101,'Ulysses',27);
INSERT INTO `pv_searchwords` VALUES (102,'Cassini',27);
INSERT INTO `pv_searchwords` VALUES (103,'Pioneer',27);
INSERT INTO `pv_searchwords` VALUES (104,'ガス',28);
INSERT INTO `pv_searchwords` VALUES (105,'主成分',29);
INSERT INTO `pv_searchwords` VALUES (106,'水素',30);
INSERT INTO `pv_searchwords` VALUES (107,'空気',31);
INSERT INTO `pv_searchwords` VALUES (108,'大気',32);
INSERT INTO `pv_searchwords` VALUES (109,'希ガス',33);
INSERT INTO `pv_searchwords` VALUES (110,'エンベロープ',34);
INSERT INTO `pv_searchwords` VALUES (111,'年齢',35);
INSERT INTO `pv_searchwords` VALUES (112,'歳',35);
INSERT INTO `pv_searchwords` VALUES (113,'いくつ？',35);
INSERT INTO `pv_searchwords` VALUES (114,'冷却',36);
INSERT INTO `pv_searchwords` VALUES (115,'収縮',36);
INSERT INTO `pv_searchwords` VALUES (116,'ダイナモ',37);
INSERT INTO `pv_searchwords` VALUES (117,'双極子',56);
INSERT INTO `pv_searchwords` VALUES (118,'磁石',56);
INSERT INTO `pv_searchwords` VALUES (119,'金属水素',38);
INSERT INTO `pv_searchwords` VALUES (120,'金属水素',38);
INSERT INTO `pv_searchwords` VALUES (121,'ホットジュピター',39);
INSERT INTO `pv_searchwords` VALUES (122,'灼熱',39);
INSERT INTO `pv_searchwords` VALUES (123,'ジュピター',40);
INSERT INTO `pv_searchwords` VALUES (124,'Jupiter',40);
INSERT INTO `pv_searchwords` VALUES (125,'ガス惑星',55);
INSERT INTO `pv_searchwords` VALUES (126,'円盤不安定',41);
INSERT INTO `pv_searchwords` VALUES (127,'重力不安定',41);
INSERT INTO `pv_searchwords` VALUES (128,'自己重力',41);
INSERT INTO `pv_searchwords` VALUES (129,'コア',42);
INSERT INTO `pv_searchwords` VALUES (130,'核',42);
INSERT INTO `pv_searchwords` VALUES (131,'中心',61);
INSERT INTO `pv_searchwords` VALUES (132,'岩石',43);
INSERT INTO `pv_searchwords` VALUES (133,'鉄',43);
INSERT INTO `pv_searchwords` VALUES (134,'シリケイト',43);
INSERT INTO `pv_searchwords` VALUES (135,'氷',43);
INSERT INTO `pv_searchwords` VALUES (136,'内部',43);
INSERT INTO `pv_searchwords` VALUES (137,'三層',43);
INSERT INTO `pv_searchwords` VALUES (138,'白班',45);
INSERT INTO `pv_searchwords` VALUES (139,'オーバルBA',45);
INSERT INTO `pv_searchwords` VALUES (140,'東西風',5);
INSERT INTO `pv_searchwords` VALUES (141,'zonal wind',5);
INSERT INTO `pv_searchwords` VALUES (142,'台風',5);
INSERT INTO `pv_searchwords` VALUES (143,'帯状風',5);
INSERT INTO `pv_searchwords` VALUES (144,'風速',5);
INSERT INTO `pv_searchwords` VALUES (145,'表面',5);
INSERT INTO `pv_searchwords` VALUES (146,'雲',47);
INSERT INTO `pv_searchwords` VALUES (147,'アンモニア',47);
INSERT INTO `pv_searchwords` VALUES (148,'硫化水素',47);
INSERT INTO `pv_searchwords` VALUES (149,'硫酸アンモニウム',47);
INSERT INTO `pv_searchwords` VALUES (150,'H2S',47);
INSERT INTO `pv_searchwords` VALUES (151,'NH3',47);
INSERT INTO `pv_searchwords` VALUES (152,'NH4HS',47);
INSERT INTO `pv_searchwords` VALUES (153,'臭い',48);
INSERT INTO `pv_searchwords` VALUES (154,'匂い',48);
INSERT INTO `pv_searchwords` VALUES (155,'におい',48);
INSERT INTO `pv_searchwords` VALUES (156,'くさい',48);
INSERT INTO `pv_searchwords` VALUES (157,'色',49);
INSERT INTO `pv_searchwords` VALUES (158,'オレンジ',49);
INSERT INTO `pv_searchwords` VALUES (159,'橙',49);
INSERT INTO `pv_searchwords` VALUES (160,'硫黄化合物',49);
INSERT INTO `pv_searchwords` VALUES (161,'温度',50);
INSERT INTO `pv_searchwords` VALUES (162,'寒',50);
INSERT INTO `pv_searchwords` VALUES (163,'暑',50);
INSERT INTO `pv_searchwords` VALUES (164,'輻射',50);
INSERT INTO `pv_searchwords` VALUES (165,'赤外',50);
INSERT INTO `pv_searchwords` VALUES (166,'冷',50);
INSERT INTO `pv_searchwords` VALUES (167,'気候',50);
INSERT INTO `pv_searchwords` VALUES (168,'水',51);
INSERT INTO `pv_searchwords` VALUES (169,'water',51);
INSERT INTO `pv_searchwords` VALUES (170,'超イオン',51);
INSERT INTO `pv_searchwords` VALUES (171,'H2O',51);
INSERT INTO `pv_searchwords` VALUES (172,'リング',4);
INSERT INTO `pv_searchwords` VALUES (173,'環',4);
INSERT INTO `pv_searchwords` VALUES (174,'ゴッサマー',4);
INSERT INTO `pv_searchwords` VALUES (175,'ハロー',4);
INSERT INTO `pv_searchwords` VALUES (176,'メイン',4);
INSERT INTO `pv_searchwords` VALUES (177,'Gossamer',4);
INSERT INTO `pv_searchwords` VALUES (178,'Halo',4);
INSERT INTO `pv_searchwords` VALUES (179,'Main',4);
INSERT INTO `pv_searchwords` VALUES (180,'ring',4);
INSERT INTO `pv_searchwords` VALUES (181,'小惑星',52);
INSERT INTO `pv_searchwords` VALUES (182,'散乱',52);
INSERT INTO `pv_searchwords` VALUES (183,'摂動',52);
INSERT INTO `pv_searchwords` VALUES (184,'天気',53);
INSERT INTO `pv_searchwords` VALUES (185,'雨',53);
INSERT INTO `pv_searchwords` VALUES (186,'沈殿',53);
INSERT INTO `pv_searchwords` VALUES (187,'ネオン',53);
INSERT INTO `pv_searchwords` VALUES (188,'滴',53);
INSERT INTO `pv_searchwords` VALUES (189,'誰',62);
INSERT INTO `pv_searchwords` VALUES (190,'一人',63);
INSERT INTO `pv_searchwords` VALUES (191,'１人',63);
INSERT INTO `pv_searchwords` VALUES (192,'彼氏',64);
INSERT INTO `pv_searchwords` VALUES (193,'好き',65);
INSERT INTO `pv_searchwords` VALUES (194,'軌道',59);
INSERT INTO `pv_searchwords` VALUES (195,'軽い',21);
INSERT INTO `pv_searchwords` VALUES (196,'重い',21);
INSERT INTO `pv_searchwords` VALUES (197,'英語',40);
INSERT INTO `pv_searchwords` VALUES (198,'遠い',13);
INSERT INTO `pv_searchwords` VALUES (199,'1人',63);
INSERT INTO `pv_searchwords` VALUES (200,'丸い',22);
INSERT INTO `pv_searchwords` VALUES (201,'生まれた',23);
INSERT INTO `pv_searchwords` VALUES (202,'いつでき',35);
INSERT INTO `pv_searchwords` VALUES (203,'いつ出来',35);
INSERT INTO `pv_searchwords` VALUES (204,'いつうまれ',35);
INSERT INTO `pv_searchwords` VALUES (205,'いつ生まれ',35);
INSERT INTO `pv_searchwords` VALUES (206,'いつ産まれ',35);
INSERT INTO `pv_searchwords` VALUES (207,'どこ？',13);
INSERT INTO `pv_searchwords` VALUES (208,'VOY∀GER',27);
INSERT INTO `pv_searchwords` VALUES (209,'生物',15);
INSERT INTO `pv_searchwords` VALUES (210,'形成',9);
INSERT INTO `pv_searchwords` VALUES (211,'作り',9);
INSERT INTO `pv_searchwords` VALUES (212,'気温',50);
INSERT INTO `pv_searchwords` VALUES (213,'名前',62);
INSERT INTO `pv_searchwords` VALUES (214,'輪っか',4);
INSERT INTO `pv_searchwords` VALUES (215,'わっか',4);
INSERT INTO `pv_searchwords` VALUES (216,'何を聞けば',66);
INSERT INTO `pv_searchwords` VALUES (217,'何をきけば',66);
INSERT INTO `pv_searchwords` VALUES (218,'何を書けば',66);
INSERT INTO `pv_searchwords` VALUES (219,'何をかけば',66);
INSERT INTO `pv_searchwords` VALUES (220,'アンテナ',67);
INSERT INTO `pv_searchwords` VALUES (221,'こんにちは',68);
INSERT INTO `pv_searchwords` VALUES (222,'おはよ',69);
INSERT INTO `pv_searchwords` VALUES (223,'ごめん',70);
INSERT INTO `pv_searchwords` VALUES (224,'元気',71);
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
  `pvv_value` bigint(20) NOT NULL COMMENT 'key',
  `pvv_word_ids` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pvv_result` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'voyagerの返事',
  `pvv_sex` int(11) DEFAULT NULL COMMENT '性別, 1=male, 2=female',
  `pvv_scene_id` int(11) NOT NULL,
  PRIMARY KEY (`pvv_id`),
  KEY `pvv_value` (`pvv_value`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_values`
--

LOCK TABLES `pv_values` WRITE;
/*!40000 ALTER TABLE `pv_values` DISABLE KEYS */;
INSERT INTO `pv_values` VALUES (1,-1,'-1','えっ、どこのこと？もう一回言ってみて',2,0);
INSERT INTO `pv_values` VALUES (2,0,'0','何も思い浮かばないの...もう一回言ってみて',2,0);
INSERT INTO `pv_values` VALUES (3,1032,'1_6','木星はとっても%1大きかった%2わ',2,3);
INSERT INTO `pv_values` VALUES (4,1028,'1_46','木星は%1しましま%2がきれいだったの',2,1);
INSERT INTO `pv_values` VALUES (5,1056,'1_9','木星はほとんど%1水素でできている%2と言えたわ',2,3);
INSERT INTO `pv_values` VALUES (6,1088,'1_10','木星にはとても%1強い磁場%2があったのよ',2,4);
INSERT INTO `pv_values` VALUES (7,1040,'1_8','木星には%1衛星%2がいくつもあったの',2,2);
INSERT INTO `pv_values` VALUES (8,1152,'1_11','えっ……そんなこと言われたら、データが消えちゃいそうですよぉ',2,999999);
INSERT INTO `pv_values` VALUES (9,1026,'1_5','木星は%1しましま%2がきれいだったの',2,1);
INSERT INTO `pv_values` VALUES (10,-2,'1_13','木星は太陽から平均で7億8千万キロメートル、地球からは6億3千万キロメートル離れているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (11,-2,'1_14','軌道のだ円度合いを表す離心率、木星は0.048なの。',2,999999);
INSERT INTO `pv_values` VALUES (12,-2,'1_15','木星には生命は存在しないと考えられているけど、木星の衛星エウロパには地下に海があると考えられていて、生命がいる可能性があると言われているわ。気になるわね！',2,999999);
INSERT INTO `pv_values` VALUES (13,-2,'1_57','半径はおよそ70,000km、直径は140,000kmよ。地球と比べて大体１０倍程度大きいことになるの。ふふっ。',2,999999);
INSERT INTO `pv_values` VALUES (14,-2,'1_19','質量は地球のおよそ318倍、太陽系の惑星で２番目に大きい土星と比べて3.3倍程度重いと見積もられているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (15,-2,'1_20','木星の平均密度は1.326g/cc、地球の平均密度は5.5g/ccなので、地球とは明らかに異なる組成であることが分かると思うわ。',2,999999);
INSERT INTO `pv_values` VALUES (16,-2,'1_21','ある決まった体積だけで考えると、木星は地球よりも（平均で）軽いことが分かるわ。けれど木星全体の質量は、太陽系のほかの惑星全てを合わせた質量よりも２倍以上重い計算になるの。木星がとてつもなく巨大であることが分かるわね。',2,999999);
INSERT INTO `pv_values` VALUES (17,-2,'1_22','木星は、中心から赤道までの半径のほうが、極までの半径よりも6.5%ほど大きいことが分かっているの。なんと地球の20倍の扁平率なのよ。',2,999999);
INSERT INTO `pv_values` VALUES (18,-2,'1_23','木星は、まず始めに固体（岩石・氷）が集まり、地球の数倍程度重くなったところで、それがコア（核）となって周囲のガスを急速に取り込んで現在の姿になったと考えられているの。でも、コアがどの程度重くなればガスを取り込めるのか、明確には分かっていないわ。',2,999999);
INSERT INTO `pv_values` VALUES (19,-2,'1_24','木星の公転周期（太陽を一周まわる長さ）は12年程度よ。でも自転の周期はなんと10時間！すさまじい速さで自転しているわ。木星の扁平率が大きいのはそのためなの。',2,999999);
INSERT INTO `pv_values` VALUES (20,-2,'1_25','強い磁場に捉えられた荷電粒子は、強い電波を発するわ。地球からは木星の自転に合わせて、その強い電波放射が観測されているの。',2,999999);
INSERT INTO `pv_values` VALUES (21,-2,'1_26','強烈な風によって大気の層ごとに摩擦が起こるので、巨大な雷が観測されているわ。',2,999999);
INSERT INTO `pv_values` VALUES (22,-2,'1_27','これまでに数々の探査機が木星に送り込まれているの。わたしもね！',2,999999);
INSERT INTO `pv_values` VALUES (23,-2,'1_28','木星はほとんどガスでできているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (24,-2,'1_29','木星の主成分は水素とヘリウムのガスよ。',2,999999);
INSERT INTO `pv_values` VALUES (25,-2,'1_30','木星のほとんどは水素とヘリウムでできているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (26,-2,'1_31','木星は空気でできているわ。でも地球の空気とは成分が全然ちがうの。',2,999999);
INSERT INTO `pv_values` VALUES (27,-2,'1_32','木星の大気はとっても分厚くて、どこまで続いているかはまだよくわかっていないの。',2,999999);
INSERT INTO `pv_values` VALUES (28,-2,'1_33','木星の希ガスはちょっとだけ太陽より多いみたい。',2,999999);
INSERT INTO `pv_values` VALUES (29,-2,'1_34','木星のエンベロープは水素でできている部分のことよ。',2,999999);
INSERT INTO `pv_values` VALUES (30,-2,'1_35','木星は太陽より数百万年ぐらい若いって言われてるわ。それでもまだ45億歳なのよ。',2,999999);
INSERT INTO `pv_values` VALUES (31,-2,'1_35_54','木星は太陽より数百万年ぐらい若いって言われてるわ。それでもまだ45億歳なのよ。…わたしの歳は秘密よ。',2,999999);
INSERT INTO `pv_values` VALUES (32,-2,'1_36','木星は昔とても熱かったけど、だんだん冷えながら縮んでいったらしいの',2,999999);
INSERT INTO `pv_values` VALUES (33,-2,'1_56','木星には双極子型の強力な磁場があるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (34,-2,'1_37','詳しいのね！木星の磁場はそのダイナモ作用で作られていると言われているわ。',2,999999);
INSERT INTO `pv_values` VALUES (35,-2,'1_38','金属水素？…そうだ、思い出した！木星のなかはとても圧力が高くて水素が金属になっちゃうんだったわ！',2,999999);
INSERT INTO `pv_values` VALUES (36,-2,'1_39','そう言えばここに来る途中に木星に似た惑星を見たわ。でも恒星に近すぎてとっても熱そうだったわ。',2,999999);
INSERT INTO `pv_values` VALUES (37,-2,'1_40','Jupiterは木星の英語名よ！',2,999999);
INSERT INTO `pv_values` VALUES (38,-2,'1_55','木星はガス惑星って呼ばれる惑星の仲間なの。となりの土星も同じガス惑星よ。',2,999999);
INSERT INTO `pv_values` VALUES (39,-2,'1_41','木星は昔太陽の周りを回っていたガス円盤から直接できたっていう説のことかしら？木星に固体がどれくらい入っているかがわかるとその説が正しいかどうかがわかると言われてるの。もうひとつ、コア形成モデルと呼ばれる説があるわよ。',2,999999);
INSERT INTO `pv_values` VALUES (40,-2,'1_42','木星の中心にはコアと呼ばれる核があると考えられているけど、コアの大きさは核なしから地球の質量の８倍までの可能性があって、まだはっきり決まっていないの。',2,999999);
INSERT INTO `pv_values` VALUES (41,-2,'1_43','木星の内部は岩石コア(主に鉄とシリケイト)と氷層(氷マントル)、その外側に水素とヘリウムからなるガス層があるような三層の玉ねぎ構造と言われているわ。内部の情報は探査機の観測(惑星の重力場)から推定されているの。',2,999999);
INSERT INTO `pv_values` VALUES (42,-2,'1_44','木星には%1大きな渦%2があるのよ。',2,8);
INSERT INTO `pv_values` VALUES (43,-2,'1_45','南半球にあった白い斑点同士が合体した後、赤斑へと変化したのよ。',2,999999);
INSERT INTO `pv_values` VALUES (44,-2,'1_47','木星には3種類の雲があって、上からアンモニア、硫酸アンモニウム、水氷の雲があるとされているわ。こうした雲の中は、雷や激しい嵐が起きていると推測されるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (45,-2,'1_48','大気上層にはアンモニアや硫化水素が存在するとされているので、においを嗅ぐことが出来れば、卵の腐った臭いやアンモニア臭がするそうよ。あまり良い香りではないわね。',2,999999);
INSERT INTO `pv_values` VALUES (46,-2,'1_49','木星って%1カラフル%2よね。',2,9);
INSERT INTO `pv_values` VALUES (47,-2,'1_50','木星は太陽から遠く離れた極寒の地にいるため、表面の温度はおよそ -150度よ。そうした冷たい木星から近赤外線が強く放射されているの。一方で、木星内部は高温(最大で数万度)にあって、温かいお茶の中のような対流運動で熱が表面まで運ばれているの。',2,999999);
INSERT INTO `pv_values` VALUES (48,-2,'1_51','木星の内部にも水氷が存在するけど、この氷は地上の氷とは異なるのよ。木星の内部は高温且つ超高圧の環境下にあるため、中心付近ではプラズマ状態になっているの。',2,999999);
INSERT INTO `pv_values` VALUES (49,-2,'1_4','木星にも%1リングがある%2のよ。わたしが見つけたの！',2,10);
INSERT INTO `pv_values` VALUES (50,-2,'1_52','木星の強い重力の影響で、小惑星帯と呼ばれる火星と木星の間にある領域にあった多くの小惑星は、遠く跳ね飛ばされた可能性があるの。一方で、地球にやってくる小惑星の軌道を曲げてくれて、地球に衝突するのを防いでくれていることもあるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (51,-2,'1_53','木星の内部ではヘリウムの滴が雨として降っているわ。このヘリウムの滴には街角の店頭の明かり「ネオンサイン」で有名なネオンも溶けていると言われているの。また、大気上層には雲もあって、そこでも雨が降っている可能性があるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (52,-2,'1_58','木星は%1形成後に数億年間移動%2したらしいわ',2,5);
INSERT INTO `pv_values` VALUES (53,-2,'1_59','木星系の%1軌道%2は特別なんだって。',2,6);
INSERT INTO `pv_values` VALUES (54,-2,'1_60','木星には%1オーロラ%2がたくさん見られるのよ。',2,7);
INSERT INTO `pv_values` VALUES (55,-2,'1_18','木星には%1衛星%2がいくつもあったの',2,2);
INSERT INTO `pv_values` VALUES (56,-2,'1_61','中心の温度はおよそ数万度、圧力は地球表面の数兆倍もあるのよ。',2,999999);
INSERT INTO `pv_values` VALUES (57,-2,'1_30_51','木星のほとんどは水素とヘリウムでできているのよ。',2,999999);
INSERT INTO `pv_values` VALUES (58,-2,'1_62','私はVOY∀GER。地球という惑星から来たのよ。……でもそれ以外の事はあんまり思い出せないの。',2,999999);
INSERT INTO `pv_values` VALUES (59,-2,'1_63','ずっと1人ぼっちで旅をしてたの。だからあなたに逢えて、とっても嬉しい！',2,999999);
INSERT INTO `pv_values` VALUES (60,-2,'1_64','か、彼氏なんていませんよぉ！ でも、双子の妹ならいます！',2,999999);
INSERT INTO `pv_values` VALUES (61,-2,'1_54_65','えっ!!……は、恥ずかしいけど嬉しいです……!!',2,999999);
INSERT INTO `pv_values` VALUES (62,-2,'1_54_62','私はVOY∀GER。地球という惑星から来たのよ。……でもそれ以外の事はあんまり思い出せないの。',2,999999);
INSERT INTO `pv_values` VALUES (63,-2,'1_54_63','ずっと1人ぼっちで旅をしてたの。だからあなたに逢えて、とっても嬉しい！',2,999999);
INSERT INTO `pv_values` VALUES (64,-2,'1_54_64','か、彼氏なんていませんよぉ！ でも、双子の妹ならいます！',2,999999);
INSERT INTO `pv_values` VALUES (65,1040,'1_8_62','木星には%1衛星%2がいくつもあったの',2,2);
INSERT INTO `pv_values` VALUES (66,-2,'1_66','木星について、知りたいことを聞いて下さい。失ったデータを思い出すかもしれません。',2,999999);
INSERT INTO `pv_values` VALUES (67,-2,'1_67','あっ、女の子のアンテナ触ろうとしちゃダメですよ、もう！',2,999999);
INSERT INTO `pv_values` VALUES (68,-2,'1_68','はい、こんにちは！',2,999999);
INSERT INTO `pv_values` VALUES (69,-2,'1_69','はい、おはようございます！',2,999999);
INSERT INTO `pv_values` VALUES (70,-2,'1_70','どうしたんですか？ 質問、思いつきませんか？ どんなことでもいいんですよ！',2,999999);
INSERT INTO `pv_values` VALUES (71,-2,'1_71','はい、私は元気です！うふふ！',2,999999);
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
  PRIMARY KEY (`pvw_id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pv_words`
--

LOCK TABLES `pv_words` WRITE;
/*!40000 ALTER TABLE `pv_words` DISABLE KEYS */;
INSERT INTO `pv_words` VALUES (1,'木星',1);
INSERT INTO `pv_words` VALUES (2,'土星',1);
INSERT INTO `pv_words` VALUES (3,'ヘリオスフィア',1);
INSERT INTO `pv_words` VALUES (4,'リング',2);
INSERT INTO `pv_words` VALUES (5,'模様',2);
INSERT INTO `pv_words` VALUES (6,'サイズ',2);
INSERT INTO `pv_words` VALUES (7,'木星の模様',2);
INSERT INTO `pv_words` VALUES (8,'衛星',2);
INSERT INTO `pv_words` VALUES (9,'組成',2);
INSERT INTO `pv_words` VALUES (10,'磁場',2);
INSERT INTO `pv_words` VALUES (11,'可愛い',2);
INSERT INTO `pv_words` VALUES (12,'土星の衛星',2);
INSERT INTO `pv_words` VALUES (13,'距離',2);
INSERT INTO `pv_words` VALUES (14,'離心率',2);
INSERT INTO `pv_words` VALUES (15,'生命',2);
INSERT INTO `pv_words` VALUES (16,'-未使用-',2);
INSERT INTO `pv_words` VALUES (17,'共鳴',2);
INSERT INTO `pv_words` VALUES (18,'木星の衛星',2);
INSERT INTO `pv_words` VALUES (19,'質量',2);
INSERT INTO `pv_words` VALUES (20,'密度',2);
INSERT INTO `pv_words` VALUES (21,'重量',2);
INSERT INTO `pv_words` VALUES (22,'扁平',2);
INSERT INTO `pv_words` VALUES (23,'誕生',2);
INSERT INTO `pv_words` VALUES (24,'自転',2);
INSERT INTO `pv_words` VALUES (25,'電波',2);
INSERT INTO `pv_words` VALUES (26,'雷',2);
INSERT INTO `pv_words` VALUES (27,'探査',2);
INSERT INTO `pv_words` VALUES (28,'ガス',2);
INSERT INTO `pv_words` VALUES (29,'主成分',2);
INSERT INTO `pv_words` VALUES (30,'水素',2);
INSERT INTO `pv_words` VALUES (31,'空気',2);
INSERT INTO `pv_words` VALUES (32,'大気',2);
INSERT INTO `pv_words` VALUES (33,'希ガス',2);
INSERT INTO `pv_words` VALUES (34,'エンベロープ',2);
INSERT INTO `pv_words` VALUES (35,'年齢',2);
INSERT INTO `pv_words` VALUES (36,'冷却',2);
INSERT INTO `pv_words` VALUES (37,'ダイナモ',2);
INSERT INTO `pv_words` VALUES (38,'金属水素',2);
INSERT INTO `pv_words` VALUES (39,'ホットジュピター',2);
INSERT INTO `pv_words` VALUES (40,'ジュピター',2);
INSERT INTO `pv_words` VALUES (41,'円盤不安定',2);
INSERT INTO `pv_words` VALUES (42,'コア',2);
INSERT INTO `pv_words` VALUES (43,'岩石',2);
INSERT INTO `pv_words` VALUES (44,'大赤斑',2);
INSERT INTO `pv_words` VALUES (45,'白斑',2);
INSERT INTO `pv_words` VALUES (46,'しましま',2);
INSERT INTO `pv_words` VALUES (47,'雲',2);
INSERT INTO `pv_words` VALUES (48,'臭い',2);
INSERT INTO `pv_words` VALUES (49,'色',2);
INSERT INTO `pv_words` VALUES (50,'温度',2);
INSERT INTO `pv_words` VALUES (51,'水',2);
INSERT INTO `pv_words` VALUES (52,'小惑星',2);
INSERT INTO `pv_words` VALUES (53,'天気',2);
INSERT INTO `pv_words` VALUES (54,'ボイジャーちゃん',2);
INSERT INTO `pv_words` VALUES (55,'ガス惑星',2);
INSERT INTO `pv_words` VALUES (56,'双極子',2);
INSERT INTO `pv_words` VALUES (57,'半径・直径',2);
INSERT INTO `pv_words` VALUES (58,'軌道変化',2);
INSERT INTO `pv_words` VALUES (59,'共鳴運動',2);
INSERT INTO `pv_words` VALUES (60,'オーロラ',2);
INSERT INTO `pv_words` VALUES (61,'中心',2);
INSERT INTO `pv_words` VALUES (62,'誰',2);
INSERT INTO `pv_words` VALUES (63,'孤独',2);
INSERT INTO `pv_words` VALUES (64,'彼氏',2);
INSERT INTO `pv_words` VALUES (65,'好き',2);
INSERT INTO `pv_words` VALUES (66,'質問',2);
INSERT INTO `pv_words` VALUES (67,'アンテナ',2);
INSERT INTO `pv_words` VALUES (68,'こんにちは',2);
INSERT INTO `pv_words` VALUES (69,'おはよう',2);
INSERT INTO `pv_words` VALUES (70,'ごめんなさい',2);
INSERT INTO `pv_words` VALUES (71,'元気',2);
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

-- Dump completed on 2013-04-22  8:11:00
