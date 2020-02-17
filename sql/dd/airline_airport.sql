-- MySQL dump 10.13  Distrib 8.0.18, for Win64 (x86_64)
--
-- Host: 211.238.142.21    Database: airline
-- ------------------------------------------------------
-- Server version	8.0.18

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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `apNum` int(11) NOT NULL AUTO_INCREMENT,
  `apId` varchar(45) DEFAULT NULL,
  `apName` varchar(45) DEFAULT NULL,
  `cityKor` varchar(45) DEFAULT NULL,
  `cityEng` varchar(45) DEFAULT NULL,
  `cityCode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`apNum`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES (1,'NAARKJB','무안','무안','Muan','MWX'),(2,'NAARKJJ','광주','광주','Gwangju','KWJ'),(3,'NAARKJK','군산','군산','Gunsan','KUV'),(4,'NAARKJY','여수','여수','Yeosu','RSU'),(5,'NAARKNW','원주','횡성/원주','Wonju','WJU'),(6,'NAARKNY','양양','양양','Yangyang','YNY'),(7,'NAARKPC','제주','제주','Jeju','CJU'),(8,'NAARKPK','김해','부산/김해','Gimhae','PUS'),(9,'NAARKPS','사천','사천','Sacheon','HIN'),(10,'NAARKPU','울산','울산','Ulsan','USN'),(11,'NAARKSI','인천','인천','Incheon','ICN'),(12,'NAARKSS','김포','서울/김포','Gimpo','GMP'),(13,'NAARKTH','포항','포항','Pohang','KPO'),(14,'NAARKTN','대구','대구','Daegu','TAE'),(15,'NAARKTU','청주','청주','Cheongju','CJJ');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 15:56:48
