-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `Mentesszelektalo`
--

DROP TABLE IF EXISTS `Mentesszelektalo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Mentesszelektalo` (
  `recept_name` varchar(17) DEFAULT NULL,
  `Zeller` varchar(5) DEFAULT NULL,
  `Gluten` varchar(5) DEFAULT NULL,
  `Tej` varchar(5) DEFAULT NULL,
  `Tojas` varchar(5) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Mentesszelektalo`
--

LOCK TABLES `Mentesszelektalo` WRITE;
/*!40000 ALTER TABLE `Mentesszelektalo` DISABLE KEYS */;
INSERT INTO `Mentesszelektalo` VALUES ('almaleves','False','True','True','True',1),('erdelyi_raguleves','False','True','True','False',2),('komenymagos_leves','False','True','False','False',3),('lencsefozelek','False','True','True','False',4),('majgaluska','False','True','True','True',5),('porkolt','False','False','False','False',6),('sztrapacska','False','True','True','True',7),('zellerkremleves','True','True','True','False',8);
/*!40000 ALTER TABLE `Mentesszelektalo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `almaleves`
--

DROP TABLE IF EXISTS `almaleves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `almaleves` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(8) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `almaleves`
--

LOCK TABLES `almaleves` WRITE;
/*!40000 ALTER TABLE `almaleves` DISABLE KEYS */;
INSERT INTO `almaleves` VALUES (6,'mentes','so',1,'almaleves'),(13,'mentes','alma',1,'almaleves'),(14,'mentes','cukor',1,'almaleves'),(15,'mentes','fahej',1,'almaleves'),(16,'mentes','citromle',1,'almaleves'),(200,'gluten','liszt',1,'almaleves'),(301,'tej','tejfol',1,'almaleves'),(400,'tojas','tojas',1,'almaleves');
/*!40000 ALTER TABLE `almaleves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erdelyi_raguleves`
--

DROP TABLE IF EXISTS `erdelyi_raguleves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erdelyi_raguleves` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(18) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erdelyi_raguleves`
--

LOCK TABLES `erdelyi_raguleves` WRITE;
/*!40000 ALTER TABLE `erdelyi_raguleves` DISABLE KEYS */;
INSERT INTO `erdelyi_raguleves` VALUES (6,'mentes','so',2,'erdelyi_raguleves'),(9,'mentes','csirkeaprolek',2,'erdelyi_raguleves'),(10,'mentes','sargarepa',2,'erdelyi_raguleves'),(11,'mentes','petrezselyemgyoker',2,'erdelyi_raguleves'),(12,'mentes','baberlevel',2,'erdelyi_raguleves'),(200,'gluten','liszt',2,'erdelyi_raguleves'),(302,'tej','vaj',2,'erdelyi_raguleves');
/*!40000 ALTER TABLE `erdelyi_raguleves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `felhasznalok`
--

DROP TABLE IF EXISTS `felhasznalok`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `felhasznalok` (
  `id` varchar(0) DEFAULT NULL,
  `vnev` varchar(0) DEFAULT NULL,
  `knev` varchar(0) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `telszam` varchar(0) DEFAULT NULL,
  `food_type` varchar(0) DEFAULT NULL,
  `zeller` varchar(0) DEFAULT NULL,
  `gluten` varchar(0) DEFAULT NULL,
  `tej` varchar(0) DEFAULT NULL,
  `tojas` varchar(0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `felhasznalok`
--

LOCK TABLES `felhasznalok` WRITE;
/*!40000 ALTER TABLE `felhasznalok` DISABLE KEYS */;
/*!40000 ALTER TABLE `felhasznalok` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komenymagos_leves`
--

DROP TABLE IF EXISTS `komenymagos_leves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komenymagos_leves` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(21) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(17) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komenymagos_leves`
--

LOCK TABLES `komenymagos_leves` WRITE;
/*!40000 ALTER TABLE `komenymagos_leves` DISABLE KEYS */;
INSERT INTO `komenymagos_leves` VALUES (2,'mentes','olaj',3,'komenymagos_leves'),(3,'mentes','zsir',3,'komenymagos_leves'),(6,'mentes','so',3,'komenymagos_leves'),(17,'mentes','komenymag',3,'komenymagos_leves'),(18,'mentes','pirospaprika',3,'komenymagos_leves'),(200,'gluten','liszt',3,'komenymagos_leves'),(201,'gluten','piritott zsemlekockak',3,'komenymagos_leves');
/*!40000 ALTER TABLE `komenymagos_leves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lencsefozelek`
--

DROP TABLE IF EXISTS `lencsefozelek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lencsefozelek` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(12) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lencsefozelek`
--

LOCK TABLES `lencsefozelek` WRITE;
/*!40000 ALTER TABLE `lencsefozelek` DISABLE KEYS */;
INSERT INTO `lencsefozelek` VALUES (2,'mentes','olaj',4,'lencsefozelek'),(3,'mentes','zsir',4,'lencsefozelek'),(4,'mentes','hagyma',4,'lencsefozelek'),(6,'mentes','so',4,'lencsefozelek'),(12,'mentes','baberlevel',4,'lencsefozelek'),(18,'mentes','pirospaprika',4,'lencsefozelek'),(23,'mentes','lencse',4,'lencsefozelek'),(24,'mentes','citromhej',4,'lencsefozelek'),(25,'mentes','ecet',4,'lencsefozelek'),(200,'gluten','liszt',4,'lencsefozelek'),(301,'tej','tejfol',4,'lencsefozelek');
/*!40000 ALTER TABLE `lencsefozelek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `majgaluska`
--

DROP TABLE IF EXISTS `majgaluska`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `majgaluska` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(11) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `majgaluska`
--

LOCK TABLES `majgaluska` WRITE;
/*!40000 ALTER TABLE `majgaluska` DISABLE KEYS */;
INSERT INTO `majgaluska` VALUES (2,'mentes','olaj',5,'majgaluska'),(3,'mentes','zsir',5,'majgaluska'),(6,'mentes','so',5,'majgaluska'),(19,'mentes','maj',5,'majgaluska'),(20,'mentes','voroshagyma',5,'majgaluska'),(21,'mentes','bors',5,'majgaluska'),(22,'mentes','majoranna',5,'majgaluska'),(200,'gluten','liszt',5,'majgaluska'),(202,'gluten','zsemle',5,'majgaluska'),(300,'tej','tej',5,'majgaluska'),(400,'tojas','tojas',5,'majgaluska');
/*!40000 ALTER TABLE `majgaluska` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marhahusleves`
--

DROP TABLE IF EXISTS `marhahusleves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marhahusleves` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(18) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marhahusleves`
--

LOCK TABLES `marhahusleves` WRITE;
/*!40000 ALTER TABLE `marhahusleves` DISABLE KEYS */;
INSERT INTO `marhahusleves` VALUES (10,'mentes','sargarepa',9,'marhahusleves'),(100,'zeller','zeller',9,'marhahusleves'),(11,'mentes','petrezselyemgyoker',9,'marhahusleves'),(12,'mentes','baberlevel',9,'marhahusleves'),(17,'mentes','komenymag',9,'marhahusleves'),(21,'mentes','bors',9,'marhahusleves'),(26,'mentes','burgonya',9,'marhahusleves'),(28,'mentes','marhalabszar',9,'marhahusleves'),(29,'mentes','ritkacsont',9,'marhahusleves'),(30,'mentes','vegyeszoldseg',9,'marhahusleves'),(31,'mentes','karalabe',9,'marhahusleves'),(32,'mentes','kelkaposzta',9,'marhahusleves'),(33,'mentes','zoldpaprika',9,'marhahusleves'),(34,'mentes','szegfuszeg',9,'marhahusleves'),(4,'mentes','hagyma',9,'marhahusleves'),(6,'mentes','so',9,'marhahusleves'),(7,'mentes','paradicsom',9,'marhahusleves');
/*!40000 ALTER TABLE `marhahusleves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `porkolt`
--

DROP TABLE IF EXISTS `porkolt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `porkolt` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(18) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `porkolt`
--

LOCK TABLES `porkolt` WRITE;
/*!40000 ALTER TABLE `porkolt` DISABLE KEYS */;
INSERT INTO `porkolt` VALUES (1,'mentes','marhahus',6,'porkolt'),(2,'mentes','olaj',6,'porkolt'),(3,'mentes','zsir',6,'porkolt'),(4,'mentes','hagyma',6,'porkolt'),(5,'mentes','edes-nemes paprika',6,'porkolt'),(6,'mentes','so',6,'porkolt'),(7,'mentes','paradicsom',6,'porkolt'),(8,'mentes','csoves paprika',6,'porkolt');
/*!40000 ALTER TABLE `porkolt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sztrapacska`
--

DROP TABLE IF EXISTS `sztrapacska`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sztrapacska` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(16) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sztrapacska`
--

LOCK TABLES `sztrapacska` WRITE;
/*!40000 ALTER TABLE `sztrapacska` DISABLE KEYS */;
INSERT INTO `sztrapacska` VALUES (2,'mentes','olaj',7,'sztrapacska'),(3,'mentes','zsir',7,'sztrapacska'),(26,'mentes','burgonya',7,'sztrapacska'),(27,'mentes','fustolt szalonna',7,'sztrapacska'),(200,'gluten','liszt',7,'sztrapacska'),(303,'tej','juhturo',7,'sztrapacska'),(400,'tojas','tojas',7,'sztrapacska');
/*!40000 ALTER TABLE `sztrapacska` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zellerkremleves`
--

DROP TABLE IF EXISTS `zellerkremleves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zellerkremleves` (
  `food_id` smallint(6) DEFAULT NULL,
  `food_type` varchar(6) DEFAULT NULL,
  `food_name` varchar(12) DEFAULT NULL,
  `rec_id` tinyint(4) DEFAULT NULL,
  `recept_name` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zellerkremleves`
--

LOCK TABLES `zellerkremleves` WRITE;
/*!40000 ALTER TABLE `zellerkremleves` DISABLE KEYS */;
INSERT INTO `zellerkremleves` VALUES (2,'mentes','olaj',8,'zellerkremleves'),(3,'mentes','zsir',8,'zellerkremleves'),(6,'mentes','so',8,'zellerkremleves'),(100,'zeller','zeller',8,'zellerkremleves'),(200,'gluten','liszt',8,'zellerkremleves'),(203,'gluten','zsemlegomboc',8,'zellerkremleves'),(204,'gluten','gyuszuteszta',8,'zellerkremleves'),(300,'tej','tej',8,'zellerkremleves'),(301,'tej','tejfol',8,'zellerkremleves');
/*!40000 ALTER TABLE `zellerkremleves` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:28
