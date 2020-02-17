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
-- Table structure for table `airportDayData`
--

DROP TABLE IF EXISTS `airportDayData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airportDayData` (
  `airlineKorean` varchar(200) DEFAULT NULL,
  `domesticNum` varchar(200) DEFAULT NULL,
  `startcity` varchar(200) DEFAULT NULL,
  `arrivalcity` varchar(200) DEFAULT NULL,
  `domesticStartTime` varchar(200) DEFAULT NULL,
  `domesticArrivalTime` varchar(200) DEFAULT NULL,
  `domesticStdate` varchar(200) DEFAULT NULL,
  `domesticEddate` varchar(200) DEFAULT NULL,
  `domesticMon` varchar(200) DEFAULT NULL,
  `domesticTue` varchar(200) DEFAULT NULL,
  `domesticWed` varchar(200) DEFAULT NULL,
  `domesticThu` varchar(200) DEFAULT NULL,
  `domesticFri` varchar(200) DEFAULT NULL,
  `domesticSat` varchar(200) DEFAULT NULL,
  `domesticSun` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airportDayData`
--

LOCK TABLES `airportDayData` WRITE;
/*!40000 ALTER TABLE `airportDayData` DISABLE KEYS */;
/*!40000 ALTER TABLE `airportDayData` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 15:56:44
