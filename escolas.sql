-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: escolas
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aluno` (
  `cod_aluno` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `idade` int(11) DEFAULT NULL,
  `doenca_alergia` varchar(30) DEFAULT NULL,
  `responsavel` int(11) DEFAULT NULL,
  `turma` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_aluno`),
  KEY `responsavel` (`responsavel`),
  KEY `turma` (`turma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`responsavel`) REFERENCES `responsavel` (`cod_resp`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`turma`) REFERENCES `turma` (`cod_turma`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES (8,'Leonardo Amaral',4,'alergia a picada',1,3),(9,'Marina Pereira',4,'nao tem',1,5),(10,'Luisa Santos',6,'nao tem',2,1),(11,'Matheus Anderson',3,'alergia a picada',1,3),(12,'Lucas Marlos',8,'alergia a paracetamol',5,6),(13,'Joao Vitor Leao',5,'nao tem',7,6),(14,'Rafaela Campos',6,'asmatica',4,2);
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bairro` (
  `cod_bairro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) DEFAULT NULL,
  `cidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_bairro`),
  KEY `cidade` (`cidade`),
  CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`cidade`) REFERENCES `cidade` (`cod_cidade`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'America',1),(2,'Bom Retiro',1),(3,'Centro',1),(4,'Gloria',1),(5,'Iririu',1),(6,'Itinga',1),(7,'Jardim Paraiso',1),(8,'Costa e Silva',1),(9,'Centro',2),(10,'Bom Retiro',2),(11,'Velha',2),(12,'Centro',3),(13,'Trindade',3),(14,'Cidade Baixa',4),(15,'Centro',4),(16,'Centro',5),(17,'Cidade Velha',6),(18,'Centro',6),(19,'Centro',7),(20,'Central',12),(21,'Tourinho',11),(22,'Aguas Mornas',13),(23,'Sombra e agua fresca',12),(24,'Jaguarao',14),(25,'Lentaom',14),(26,'Murara',15),(27,'Cuia',15),(28,'Cafe',16),(29,'Palmeiras',16),(30,'Fantasia',17),(31,'Penado',17),(32,'Bolos',3),(33,'Avioes',4),(34,'Total',5);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cidade` (
  `cod_cidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cidade` varchar(30) DEFAULT NULL,
  `estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_cidade`),
  KEY `estado` (`estado`),
  CONSTRAINT `cidade_ibfk_1` FOREIGN KEY (`estado`) REFERENCES `estado` (`cod_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Joinville',2),(2,'Blumenau',2),(3,'Florianopolis',2),(4,'Porto Alegre',1),(5,'Gramado',1),(6,'Curitiba',3),(7,'Sao Paulo',4),(8,'Sao Luis',5),(9,'Vitoria',6),(10,'Rio Branco',7),(11,'Tarauaca',7),(12,'Maceio',8),(13,'Pilar',8),(14,'Belo Horizonte',9),(15,'Varginha',9),(16,'Cuiaba',10),(17,'Caceres',10),(18,'Rio de Janeiro',11),(19,'Tangua',11),(20,'Natal',12),(21,'Touros',12),(22,'Fortaleza',13),(23,'Sobral',13),(24,'Manaus',14),(25,'Tefe',14),(26,'Macapa',15),(27,'Cutias',15),(28,'Goiania',16),(29,'Formosa',16),(30,'Palmas',17),(31,'Almas',17),(32,'Colombo',3),(33,'Guarulhos',4),(34,'Codo',5);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escolinha`
--

DROP TABLE IF EXISTS `escolinha`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `escolinha` (
  `cod_escola` int(11) NOT NULL AUTO_INCREMENT,
  `nome_escola` varchar(30) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  `bairro` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_escola`),
  KEY `diretor` (`diretor`),
  KEY `bairro` (`bairro`),
  CONSTRAINT `escolinha_ibfk_1` FOREIGN KEY (`diretor`) REFERENCES `funcionario` (`cod_func`),
  CONSTRAINT `escolinha_ibfk_2` FOREIGN KEY (`bairro`) REFERENCES `bairro` (`cod_bairro`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escolinha`
--

LOCK TABLES `escolinha` WRITE;
/*!40000 ALTER TABLE `escolinha` DISABLE KEYS */;
INSERT INTO `escolinha` VALUES (1,'Ceu azul',1,1),(2,'Anjos da terra',2,2),(3,'Maria Bonita',1,3),(4,'Amarelinha',2,7),(5,'Brincando de roda',10,16),(6,'Amarelinha',3,23),(7,'Anjos do ceu',7,8),(8,'Brincadeira de crianca',16,30),(9,'Pula Pula',25,7),(10,'Ursinhos dourados',27,16);
/*!40000 ALTER TABLE `escolinha` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `estado` (
  `cod_estado` int(11) NOT NULL AUTO_INCREMENT,
  `nome_estado` varchar(30) DEFAULT NULL,
  `uf` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`cod_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
INSERT INTO `estado` VALUES (1,'Rio Grande do Sul','RS'),(2,'Santa Catarina','SC'),(3,'Parana','PR'),(4,'Sao Paulo','SP'),(5,'Maranhao','RJ'),(6,'Espirito Santo','ES'),(7,'Acre','AC'),(8,'Alagoas','AL'),(9,'Minas Gerais','MG'),(10,'Mato Grosso','MT'),(11,'Rio de Janeiro','RJ'),(12,'Rio Grande do Norte','RN'),(13,'Ceara','CE'),(14,'Amazonas','AM'),(15,'Amapa','AP'),(16,'Goias','GO'),(17,'Tocantins','TO');
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `cod_func` int(11) NOT NULL AUTO_INCREMENT,
  `nome_func` varchar(30) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  `diretor` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_func`),
  KEY `diretor` (`diretor`),
  CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`diretor`) REFERENCES `funcionario` (`cod_func`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'Ana Maria',123456,1),(2,'Bento Silva',54321,2),(3,'Cassia Antonia',1111111,3),(4,'Gloria Maria',23451,34),(5,'Ildes Santos',9898981,34),(6,'Itamar Franco',1989898,3),(7,'Jandira Pereira',9897865,7),(8,'Costanza Maria',132323232,7),(9,'Carolina Barbosa',4526754,7),(10,'Bruna Barros',9089098,10),(11,'Valeria Andrade',76564342,1),(12,'Carlos Silva',454543,27),(13,'Tania Maria',3333333,13),(14,'Cida Batista',4443322,1),(15,'Catia Cardoso',45454544,1),(16,'Celia Regina',555555,16),(17,'Dandara Gomes',66666,16),(18,'Marina Moreira',887877,16),(19,'Flor de Lis',656565657,16),(20,'Lana Lis',43434312,2),(21,'Tatiana Tutis',132434431,10),(22,'Argelina Lunas',434343413,13),(23,'Sonia Andrade e Silva',14343432,2),(24,'Julia Matias',1443434,27),(25,'Lucia Helena',6565514,13),(26,'Mara Maravilha',1556565,3),(27,'Karen Lontres',655655,27),(28,'Fernanda Fernandes',16677776,10),(29,'Paula Regina',45656516,3),(30,'Flavia Formosa',175544,3),(31,'Pedro Pereira',54545454,2),(32,'Janaina',545454543,2),(33,'Ana Maria',45454545,1),(34,'Tereza Mezom',445454545,1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel`
--

DROP TABLE IF EXISTS `responsavel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `responsavel` (
  `cod_resp` int(11) NOT NULL AUTO_INCREMENT,
  `nome_resp` varchar(30) DEFAULT NULL,
  `grau` varchar(30) DEFAULT NULL,
  `telefone` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_resp`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel`
--

LOCK TABLES `responsavel` WRITE;
/*!40000 ALTER TABLE `responsavel` DISABLE KEYS */;
INSERT INTO `responsavel` VALUES (1,'Paulo Almeida','pai',44345554),(2,'Maria da Silva','mae',34343434),(3,'Ana Paula','mae',5545454),(4,'Joana Pereira','mae',43454545),(5,'Joao Antonio','pai',98989898),(6,'Julia Augostin','mae',878787),(7,'Maria Olga','avo',989899999),(8,'Joao Pereira','padastro',887998889),(9,'Tania Moreira','mae',9876544),(10,'Paula Santos','mae',2147483647);
/*!40000 ALTER TABLE `responsavel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `turma` (
  `cod_turma` int(11) NOT NULL AUTO_INCREMENT,
  `faixa_etaria` varchar(10) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  `prof_resp` int(11) DEFAULT NULL,
  PRIMARY KEY (`cod_turma`),
  KEY `prof_resp` (`prof_resp`),
  CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`prof_resp`) REFERENCES `funcionario` (`cod_func`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES (1,'maternal 1',8,4),(2,'maternal 2',4,6),(3,'jardim A',5,15),(4,'jardim B',4,23),(5,'maternal 1',4,30),(6,'jardim A t',5,22);
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-20 16:50:44
