CREATE DATABASE  IF NOT EXISTS `trabalho_bdd` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `trabalho_bdd`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: trabalho_bdd
-- ------------------------------------------------------
-- Server version	5.7.36

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acougue`
--

DROP TABLE IF EXISTS `acougue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acougue` (
  `cod_acougue` int(3) NOT NULL AUTO_INCREMENT,
  `tipo_carne` enum('bovino','suino','ave') DEFAULT NULL,
  `conserva` enum('congelado','resfriado') DEFAULT NULL,
  `validade` date DEFAULT NULL,
  PRIMARY KEY (`cod_acougue`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acougue`
--

LOCK TABLES `acougue` WRITE;
/*!40000 ALTER TABLE `acougue` DISABLE KEYS */;
INSERT INTO `acougue` VALUES (1,'bovino','congelado','2022-01-01'),(2,'suino','resfriado','2019-05-05'),(3,'ave','resfriado','2018-06-14'),(4,'suino','resfriado','2014-12-15'),(5,'ave','congelado','2016-07-04'),(6,'bovino','resfriado','2017-06-07'),(7,'ave','congelado','2016-05-08'),(8,'suino','congelado','2014-09-30'),(9,'bovino','resfriado','2016-10-08'),(10,'bovino','resfriado','2020-02-28');
/*!40000 ALTER TABLE `acougue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `beneficios`
--

DROP TABLE IF EXISTS `beneficios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `beneficios` (
  `n_beneficio` varchar(10) NOT NULL,
  `data_contratado` date NOT NULL,
  `data_cessado` date DEFAULT NULL,
  `matricula_funcionario` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`n_beneficio`),
  KEY `fk_matricula_funcionario` (`matricula_funcionario`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beneficios`
--

LOCK TABLES `beneficios` WRITE;
/*!40000 ALTER TABLE `beneficios` DISABLE KEYS */;
INSERT INTO `beneficios` VALUES ('771','2015-02-02',NULL,'12301'),('772','2020-08-06',NULL,'1000001'),('773','2021-08-10',NULL,'1000003'),('774','2017-09-15','2020-01-01','1000004'),('775','2019-12-10','2021-05-20','1000013'),('776','2009-11-02','2016-11-20','1000023'),('777','2021-09-10',NULL,'1000015'),('778','2015-05-15','2020-02-06','1000055'),('779','2018-01-02',NULL,'1000666'),('780','2014-09-02',NULL,'10666'),('781','2013-10-05','2016-05-14','100777');
/*!40000 ALTER TABLE `beneficios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chefe`
--

DROP TABLE IF EXISTS `chefe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chefe` (
  `n_chefe` varchar(7) DEFAULT NULL,
  `matricula_f` varchar(7) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chefe`
--

LOCK TABLES `chefe` WRITE;
/*!40000 ALTER TABLE `chefe` DISABLE KEYS */;
INSERT INTO `chefe` VALUES ('01','100666'),('02','1000023');
/*!40000 ALTER TABLE `chefe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) DEFAULT NULL,
  `tel_cliente` varchar(11) DEFAULT NULL,
  `end_cliente` enum('rio','caxias','niteroi','sg','mage') DEFAULT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'arthur','2122223333','rio'),(2,'alice','2122003333','mage'),(3,'vior','2122003663','mage'),(4,'wallace','2122077663','sg'),(5,'lojas luz','2166077663','sg'),(6,'lojas castro','2166078863','caxias'),(7,' loja super love','2166076363','rio'),(8,'mercado j','2166093363','rio'),(9,'caio','2166093389','sg'),(10,'nicolas','2166923389','niteroi'),(11,'fred','2178923389','niteroi'),(12,'luna market','2178923949','niteroi'),(13,'market alpha','2178785949','caxias'),(14,'daniela','2178785920','rio'),(15,'dalto','2166785920','caxias'),(16,'casa xé','2168885920','caxias'),(17,'quentinha lu','2168895320','caxias'),(18,'lucas','2167535320','rio'),(19,'tula','2167741320','sg');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_f`
--

DROP TABLE IF EXISTS `cliente_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_f` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) DEFAULT NULL,
  UNIQUE KEY `cpf` (`cpf`),
  KEY `id_client` (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_f`
--

LOCK TABLES `cliente_f` WRITE;
/*!40000 ALTER TABLE `cliente_f` DISABLE KEYS */;
INSERT INTO `cliente_f` VALUES (1,'00000000001'),(2,'00000000020'),(3,'00000000322'),(4,'00000004523'),(9,'00000412523'),(10,'96300412523'),(11,'96965412523'),(14,'96965400523'),(15,'96965400863'),(18,'96125400863'),(19,'96000400863');
/*!40000 ALTER TABLE `cliente_f` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_j`
--

DROP TABLE IF EXISTS `cliente_j`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_j` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `cnpj` varchar(14) DEFAULT NULL,
  UNIQUE KEY `cnpj` (`cnpj`),
  KEY `id_client` (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_j`
--

LOCK TABLES `cliente_j` WRITE;
/*!40000 ALTER TABLE `cliente_j` DISABLE KEYS */;
INSERT INTO `cliente_j` VALUES (5,'11112223344568'),(6,'11166323344568'),(7,'99966323344568'),(8,'99966365344568'),(12,'99955565344568'),(13,'00955565344568'),(16,'00955565344542'),(17,'00955565534542');
/*!40000 ALTER TABLE `cliente_j` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `n_compra` varchar(10) NOT NULL,
  `data_compra` date DEFAULT NULL,
  `cod_distri` varchar(12) NOT NULL,
  `n_palete` varchar(3) DEFAULT NULL,
  `valor_compra` float DEFAULT NULL,
  PRIMARY KEY (`n_compra`),
  KEY `cod_distri` (`cod_distri`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
INSERT INTO `compra` VALUES ('8010','2019-02-06','1001','5',1000),('8011','2018-09-06','1002','4',1200),('8012','2020-01-07','1003','10',6000),('8013','2022-11-26','1004','2',500),('8014','2021-02-22','1005','3',700),('8015','2017-02-22','1006','7',7600),('8016','2022-12-01','1007','9',10000),('8017','2022-05-21','1008','2',300),('8018','2016-05-11','1009','7',4600),('8019','2020-08-18','1010','6',3600),('8020','2018-08-18','1011','5',2350),('8021','2019-03-22','1012','3',1200),('8022','2020-06-27','1013','11',12000),('8023','2018-07-14','1014','7',4000),('8024','2021-03-30','1015','1',800),('8025','2017-09-04','1016','2',900),('8026','2020-09-04','1017','3',980),('8027','2022-10-14','1018','10',7000),('8028','2020-04-24','1019','2',850),('8029','2019-10-20','1020','5',2050);
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controle_qualidade`
--

DROP TABLE IF EXISTS `controle_qualidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `controle_qualidade` (
  `cod_relatorio` int(2) NOT NULL AUTO_INCREMENT,
  `data_relatorio` date DEFAULT NULL,
  `nota_relatorio` varchar(1) DEFAULT NULL,
  `cod_acougue` int(11) NOT NULL,
  PRIMARY KEY (`cod_relatorio`),
  KEY `fk_codacougue` (`cod_acougue`)
) ENGINE=MyISAM AUTO_INCREMENT=91 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle_qualidade`
--

LOCK TABLES `controle_qualidade` WRITE;
/*!40000 ALTER TABLE `controle_qualidade` DISABLE KEYS */;
INSERT INTO `controle_qualidade` VALUES (10,'2022-02-20','9',1),(20,'2022-03-06','4',3),(30,'2020-06-10','3',7),(40,'2022-07-25','1',4),(50,'2022-04-14','9',2),(60,'2019-10-12','5',5),(70,'2020-11-30','1',6),(80,'2020-12-12','9',8),(90,'2021-10-01','6',10),(85,'2018-07-10','2',9);
/*!40000 ALTER TABLE `controle_qualidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dependente`
--

DROP TABLE IF EXISTS `dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dependente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `nascimento` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `mat_funcio` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_mat_funcio` (`mat_funcio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependente`
--

LOCK TABLES `dependente` WRITE;
/*!40000 ALTER TABLE `dependente` DISABLE KEYS */;
/*!40000 ALTER TABLE `dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distribuidora`
--

DROP TABLE IF EXISTS `distribuidora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distribuidora` (
  `cod_distri` varchar(12) NOT NULL,
  `data_entrega` date DEFAULT NULL,
  `cod_marca` varchar(8) DEFAULT NULL,
  `estado_distribuidor` enum('RJ','SP','MG','AM','PE','BA','SC') DEFAULT NULL,
  PRIMARY KEY (`cod_distri`),
  KEY `cod_marca` (`cod_marca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distribuidora`
--

LOCK TABLES `distribuidora` WRITE;
/*!40000 ALTER TABLE `distribuidora` DISABLE KEYS */;
INSERT INTO `distribuidora` VALUES ('1001','2020-05-05','1','RJ'),('1002','2019-03-17','2','SP'),('1003','2015-09-10','3','BA'),('1004','2021-12-23','4','PE'),('1005','2016-06-09','5','RJ'),('1006','2022-04-06','6','BA'),('1007','2022-09-25','7','AM'),('1008','2018-04-06','8','AM'),('1009','2018-09-14','9','SC'),('1010','2017-12-15','9','SP'),('1011','2019-05-01','7','RJ'),('1012','2022-06-02','8','RJ'),('1013','2018-07-26','4','BA'),('1014','2020-01-31','2','SC'),('1015','2018-02-04','3','PE'),('1016','2019-03-06','6','BA'),('1017','2020-09-07','1','MG'),('1018','2022-07-06','10','MG'),('1019','2020-11-11','10','RJ'),('1020','2016-09-03','6','PE');
/*!40000 ALTER TABLE `distribuidora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `cod_estoque` varchar(4) NOT NULL,
  `n_deposito` varchar(2) DEFAULT NULL,
  `local_deposito` enum('aereo','piso') DEFAULT NULL,
  `cod_mercearia` varchar(6) DEFAULT NULL,
  `n_palete` varchar(2) DEFAULT NULL,
  `estoque_peso_kg` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`cod_estoque`),
  KEY `fk_cod_mercearia` (`cod_mercearia`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES ('301','1','aereo','a1','5','150'),('302','1','piso','a1','3','60'),('303','2','aereo','a2','4','100'),('304','2','piso','a2','2','40'),('305','3','aereo','a3','5','120'),('306','3','piso','a3','2','50'),('307','4','aereo','a4','7','200'),('308','4','piso','a4','5','50'),('309','5','aereo','a5','5','160'),('310','5','piso','a5','4','30'),('311','1','aereo','a6','6','210'),('312','2','piso','a6','4','80'),('313','3','aereo','a7','6','240'),('314','3','piso','a7','2','70'),('315','4','aereo','a8','5','200'),('316','5','piso','a9','4','90'),('317','5','aereo','a9','4','130'),('318','3','piso','a3','4','50'),('319','5','piso','a4','2','40'),('320','2','aereo','a7','1','110');
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_caixa`
--

DROP TABLE IF EXISTS `f_caixa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `f_caixa` (
  `cod_fcaixa` varchar(4) DEFAULT NULL,
  `n_pdv` varchar(1) NOT NULL,
  PRIMARY KEY (`n_pdv`),
  UNIQUE KEY `cod_fcaixa` (`cod_fcaixa`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_caixa`
--

LOCK TABLES `f_caixa` WRITE;
/*!40000 ALTER TABLE `f_caixa` DISABLE KEYS */;
INSERT INTO `f_caixa` VALUES ('510','1'),('511','2'),('513','3'),('514','4'),('515','5'),('516','6'),('517','7'),('518','8'),('519','9');
/*!40000 ALTER TABLE `f_caixa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `matricula` varchar(7) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `idade` date DEFAULT NULL,
  `data_adimissao` date DEFAULT NULL,
  `sexo` enum('M','F') DEFAULT NULL,
  `telf_funcionario` varchar(11) DEFAULT NULL,
  `turno` enum('manha','tarde') DEFAULT NULL,
  `end_funcio` enum('rio','magé','niteroi','sao gonçalo','caxias','mesquita') DEFAULT NULL,
  `altura` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`matricula`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES ('12301','00000000000','1992-12-01','2022-08-01','M','22222222222','manha','rio',180),('1000001','00000000001','2002-12-02','2020-07-06','M','11111111111','manha','niteroi',150),('1000003','00000000002','2003-11-05','2021-07-06','F','11111111112','tarde','rio',160),('1000004','00000000004','2000-05-11','2017-08-15','M','11111111113','manha','niteroi',176),('1000013','00000000011','1990-08-18','2019-11-25','F','11111111333','manha','magé',190),('1000023','00000000023','1970-01-08','2009-10-20','M','11111111444','manha','rio',170),('1000015','00000000015','1997-02-14','2021-08-14','M','11111111444','tarde','rio',177),('1000055','00000000555','1975-03-23','2015-04-09','F','11111111999','tarde','caxias',180),('1000666','00000006666','1990-02-28','2017-11-22','M','11111118888','manha','rio',181),('100666','00000000666','2000-09-14','2014-08-13','M','11111166666','manha','caxias',183),('100777','00000000777','1975-10-12','2013-09-23','M','1111116777','manha','sao gonçalo',168);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_estoque`
--

DROP TABLE IF EXISTS `item_estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_estoque` (
  `n_lote` varchar(4) NOT NULL,
  `date_entrada` date DEFAULT NULL,
  `validade` date DEFAULT NULL,
  `tipo_produto` enum('alto_giro','doce','liquida','bazar','salgado','perfumaria','limpeza','perecivel') DEFAULT NULL,
  `cod_estoque` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`n_lote`),
  KEY `fk_cod_estoque` (`cod_estoque`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_estoque`
--

LOCK TABLES `item_estoque` WRITE;
/*!40000 ALTER TABLE `item_estoque` DISABLE KEYS */;
INSERT INTO `item_estoque` VALUES ('01','2020-03-05','2021-04-26','salgado','301'),('02','2018-09-15','2025-05-15','bazar','302'),('03','2020-10-06','2020-11-16','perecivel','304'),('04','2021-04-17','2022-01-09','doce','306'),('05','2020-06-17','2021-06-01','liquida','316'),('06','2021-12-17','2022-01-16','perecivel','303'),('07','2020-10-07','2023-05-17','perfumaria','311'),('08','2019-03-30','2019-06-01','limpeza','305'),('09','2021-09-11','2021-10-15','perecivel','309'),('10','2018-07-02','2029-03-06','bazar','314'),('11','2022-11-07','2024-02-27','liquida','312'),('12','2021-09-05','2022-04-08','doce','310'),('13','2019-10-20','2020-03-14','salgado','307'),('14','2020-11-30','2022-01-15','liquida','308'),('15','2021-12-14','2022-05-14','doce','313'),('16','2022-10-01','2022-12-15','perecivel','315'),('17','2020-05-07','2021-07-18','limpeza','316'),('18','2021-04-30','2023-05-06','perfumaria','317'),('19','2022-05-07','2025-07-14','perfumaria','318'),('20','2019-06-27','2019-12-21','alto_giro','319'),('21','2020-09-26','2022-02-03','alto_giro','320');
/*!40000 ALTER TABLE `item_estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca`
--

DROP TABLE IF EXISTS `marca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca` (
  `cod_marca` varchar(8) NOT NULL,
  `cpnj` varchar(14) NOT NULL,
  `nome` varchar(10) NOT NULL,
  `estado_produtor` enum('SP','RJ','AM','MG','SC','PE','MT','BA') DEFAULT NULL,
  PRIMARY KEY (`cod_marca`),
  UNIQUE KEY `cpnj` (`cpnj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca`
--

LOCK TABLES `marca` WRITE;
/*!40000 ALTER TABLE `marca` DISABLE KEYS */;
INSERT INTO `marca` VALUES ('1','0000000000','leste','SP'),('2','1111111111','ala','SP'),('3','2222222222','oxi','BA'),('4','3333333333','koe','RJ'),('5','4444444444','pera','AM'),('6','5555555555','AVA','MT'),('7','6666666666','PARCA','SP'),('8','7777777777','GURI','SC'),('9','8888888888','ETA','PE'),('10','999999999','UAI','MG');
/*!40000 ALTER TABLE `marca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercado`
--

DROP TABLE IF EXISTS `mercado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercado` (
  `end_mercado` varchar(20) NOT NULL,
  `telf_mercado` varchar(12) NOT NULL,
  `n_mercado` varchar(3) NOT NULL,
  `cnpj` varchar(14) DEFAULT NULL,
  PRIMARY KEY (`n_mercado`),
  UNIQUE KEY `cnpj` (`cnpj`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercado`
--

LOCK TABLES `mercado` WRITE;
/*!40000 ALTER TABLE `mercado` DISABLE KEYS */;
INSERT INTO `mercado` VALUES ('rio','2177603244','266','02395463217895');
/*!40000 ALTER TABLE `mercado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercearia`
--

DROP TABLE IF EXISTS `mercearia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mercearia` (
  `cod_mercearia` varchar(6) NOT NULL,
  `n_setor` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`cod_mercearia`),
  UNIQUE KEY `n_setor` (`n_setor`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercearia`
--

LOCK TABLES `mercearia` WRITE;
/*!40000 ALTER TABLE `mercearia` DISABLE KEYS */;
INSERT INTO `mercearia` VALUES ('a1','1'),('a2','2'),('a3','3'),('a4','4'),('a5','5'),('a6','6'),('a7','7'),('a8','8'),('a9','9');
/*!40000 ALTER TABLE `mercearia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `operador`
--

DROP TABLE IF EXISTS `operador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `operador` (
  `n_operador` varchar(7) DEFAULT NULL,
  `supervisao_chefe` varchar(7) DEFAULT NULL,
  `matricula_f` varchar(7) DEFAULT NULL,
  KEY `fk_supervisao_chefe` (`supervisao_chefe`),
  KEY `fk_matricula_f` (`matricula_f`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `operador`
--

LOCK TABLES `operador` WRITE;
/*!40000 ALTER TABLE `operador` DISABLE KEYS */;
INSERT INTO `operador` VALUES ('101','01','12301'),('102','01','1000001'),('103','02','1000003'),('104','02','1000004'),('105','02','1000013'),('107','01','1000055'),('107','01','1000015'),('107','01','100066'),('107','01','100777');
/*!40000 ALTER TABLE `operador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `cod_barras` varchar(8) NOT NULL,
  `n_lote` int(11) NOT NULL,
  PRIMARY KEY (`cod_barras`),
  KEY `fk_lote` (`n_lote`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES ('121',1),('122',2),('123',3),('124',4),('125',5),('126',6),('127',7),('128',8),('129',9),('130',10),('131',11),('132',12),('133',13),('134',14),('135',15),('136',16),('137',17),('138',18),('139',19),('140',20),('141',21);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotor`
--

DROP TABLE IF EXISTS `promotor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotor` (
  `id_promotor` varchar(30) NOT NULL,
  `cpf_promotor` varchar(11) NOT NULL,
  `nome` varchar(15) DEFAULT NULL,
  `cod_marca` int(11) NOT NULL,
  PRIMARY KEY (`id_promotor`),
  UNIQUE KEY `cpf_promotor` (`cpf_promotor`),
  KEY `fk_codmarca` (`cod_marca`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotor`
--

LOCK TABLES `promotor` WRITE;
/*!40000 ALTER TABLE `promotor` DISABLE KEYS */;
INSERT INTO `promotor` VALUES ('','11111111111','nico',1),('10','1111111111','nico',1),('11','2222222222','lucas',1),('20','3333333333','ina',2),('22','4444444444','cadu',2),('30','5555555555','ryan',3),('40','6666666666','hebe',4),('44','7777777777','igor',4),('50','8888888888','janja',5),('55','9999999999','lara',5),('60','1111222333','ana',6),('66','2222233344','vania',6),('70','4444445555','dudu',7),('77','66666611111','mera',7),('80','88888888888','andré',8),('88','99999999999','myka',8),('90','99999996666','guilherme',9);
/*!40000 ALTER TABLE `promotor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rh`
--

DROP TABLE IF EXISTS `rh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rh` (
  `cod_rh` varchar(10) NOT NULL,
  PRIMARY KEY (`cod_rh`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rh`
--

LOCK TABLES `rh` WRITE;
/*!40000 ALTER TABLE `rh` DISABLE KEYS */;
INSERT INTO `rh` VALUES ('5401');
/*!40000 ALTER TABLE `rh` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sac`
--

DROP TABLE IF EXISTS `sac`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sac` (
  `n_atendimento` int(3) NOT NULL AUTO_INCREMENT,
  `hora` date DEFAULT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`n_atendimento`),
  KEY `fk_codclient` (`id_client`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sac`
--

LOCK TABLES `sac` WRITE;
/*!40000 ALTER TABLE `sac` DISABLE KEYS */;
INSERT INTO `sac` VALUES (1,'2022-05-03',1),(2,'2021-06-07',2),(3,'2016-11-07',3),(4,'2012-08-21',4),(5,'2015-12-21',5),(6,'2019-02-16',6),(7,'2020-04-06',7),(8,'2020-10-13',8),(9,'2021-11-02',9),(10,'2018-07-27',10);
/*!40000 ALTER TABLE `sac` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `televendas`
--

DROP TABLE IF EXISTS `televendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `televendas` (
  `n_pedido` int(4) NOT NULL AUTO_INCREMENT,
  `data_pedido` date DEFAULT NULL,
  `id_client` int(11) DEFAULT NULL,
  PRIMARY KEY (`n_pedido`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `televendas`
--

LOCK TABLES `televendas` WRITE;
/*!40000 ALTER TABLE `televendas` DISABLE KEYS */;
INSERT INTO `televendas` VALUES (1,'2022-05-16',NULL),(2,'2022-06-11',NULL),(3,'2020-12-03',NULL),(4,'2021-08-07',NULL),(5,'2019-01-27',NULL),(6,'2019-03-12',NULL);
/*!40000 ALTER TABLE `televendas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendas`
--

DROP TABLE IF EXISTS `vendas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendas` (
  `nota_fiscal` varchar(5) DEFAULT NULL,
  `id_client` int(11) NOT NULL,
  `cod_barras` int(11) NOT NULL,
  `n_pdv` varchar(1) DEFAULT NULL,
  `valor_venda` float DEFAULT NULL,
  `n_pedido` int(4) DEFAULT NULL,
  KEY `fk_vendaclient` (`id_client`),
  KEY `fk_codproduto` (`cod_barras`),
  KEY `fk_n_pdv` (`n_pdv`),
  KEY `fk_n_pedido` (`n_pedido`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendas`
--

LOCK TABLES `vendas` WRITE;
/*!40000 ALTER TABLE `vendas` DISABLE KEYS */;
INSERT INTO `vendas` VALUES ('078',1,121,'2',20.5,NULL),('079',2,122,'2',80,NULL),('080',3,127,'6',260,NULL),('090',4,137,'9',780,NULL),('090',5,140,'7',180,NULL),('086',5,141,'1',1800,NULL),('026',6,134,'8',3800,NULL),('036',7,124,'5',2000,NULL),('786',8,128,'5',3300,NULL),('786',10,126,'6',15,NULL),('786',11,136,'6',178.2,NULL),('786',12,136,'6',4520.6,NULL),('986',13,140,'6',5700,NULL),('036',14,124,'6',20,NULL),('326',15,131,'5',67,NULL),('1003',16,137,NULL,1700,5),('397',17,130,NULL,1080,2),('563',18,121,NULL,1900,3),('963',19,127,NULL,2300,4);
/*!40000 ALTER TABLE `vendas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-13 23:39:03
