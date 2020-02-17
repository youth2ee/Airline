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
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `members` (
  `id` varchar(400) NOT NULL,
  `pw` varchar(400) NOT NULL,
  `name` varchar(400) NOT NULL,
  `phone` varchar(400) NOT NULL,
  `email` varchar(400) NOT NULL,
  `memberNum` varchar(45) NOT NULL,
  `mileage` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `memberNum_UNIQUE` (`memberNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES ('admin','admin','관리자','023368546','ssangyong@sist.com','000-000-000',0),('admin1234','admin1234!','이가영','01012341234','yoo@gmail.com','704-796-613',21552),('changkyu22','changkyu22@@','진창규','01022259422','changkyu22@korea.com','816-100-083',0),('check1','check1','check1','01012341234','check@check.com','1113',5388),('ckdudgk123','ckdudgk123@','차영하','01022923481','ckdudgk123@naver.com','464-983-367',0),('daze12','dladbsgml_4586','임윤희','01012345678','daze123@hanmir.com','828-661-363',5388),('daze123','1234','임윤희','12345678910','daze123@gmail.com','296-288-583',0),('everyair','1234','애브리에어','01022259422','everyair@gmail.com','643-783-528',0),('hong','hong','홍길동','01011111111','hong@hanafos.com','195-718-710',5388),('jinck22','jinck22!','진창규','01022259422','jinck22@dreamwiz.com','589-976-787',0),('jinck222','jinck222!','짱구','01022259422','jinck222@sbcglobal.net','694-835-130',0),('pyj9088','dktldksk!1','박용주','01038209098','pyj9088@naver.com','903-728-074',0),('pyj90881212','test!234','박용주','01838201111','test@yahoo.co.jp','171-199-803',0),('test','1234','test','01012341234','test@test.com','111-222-333',10776),('test1111','test!234','박용주','01038201111','','956-135-842',0),('test1112','test!234','박용주','01138201111','pyj9088@aol.com','524-969-657',0),('test1122','test!234','박용주','01838209099','hong@hotmail.co.kr','716-637-893',0),('test1234','test!234','박용주','01038201111','pyj9088@hotmail.co.kr','004-708-889',0),('test3333','test!234','박용주','01011119098','pyj9088@aol.com','635-530-423',0),('test4321','test!234','박용주','01038201111','pyj9088@hotmail.co.kr','513-419-416',0),('test53','aaaa!234','이가영','01077777777','yoo@naver.com','606-426-106',0),('test555','aaaa1111!','이가영','01077777777','yoo@aol.com','242-298-150',0),('testtt','test!234','테스트','01012344321','test@test.com','060-297-156',0);
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-17 15:56:45
