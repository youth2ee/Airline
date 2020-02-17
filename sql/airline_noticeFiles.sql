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
-- Table structure for table `noticeFiles`
--

DROP TABLE IF EXISTS `noticeFiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `noticeFiles` (
  `fnum` int(11) NOT NULL AUTO_INCREMENT,
  `num` int(11) DEFAULT NULL,
  `fname` varchar(450) DEFAULT NULL,
  `oname` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`fnum`),
  KEY `files_num_fk` (`num`),
  CONSTRAINT `files_num_fk` FOREIGN KEY (`num`) REFERENCES `notice` (`num`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticeFiles`
--

LOCK TABLES `noticeFiles` WRITE;
/*!40000 ALTER TABLE `noticeFiles` DISABLE KEYS */;
INSERT INTO `noticeFiles` VALUES (42,84,'751c109e-b963-4fb5-b398-72efadf69ddf_5.PNG','5.PNG'),(43,84,'0dadb45b-f31a-48aa-a3c2-ddb111977ec8_4.PNG','4.PNG'),(44,85,'68ced86b-f75a-42a5-94b9-f71e783953aa_2.PNG','2.PNG'),(45,85,'3848e6f0-5045-4780-99d9-4f83bad269e6_4.PNG','4.PNG'),(46,88,'281aad64-596f-4c80-888b-5d99b4c8497d_2.PNG','2.PNG'),(48,103,'42b1e463-d0a9-4b5e-ba18-62664e965be9_3.PNG','3.PNG'),(49,103,'89178c7e-4e20-445e-893a-dfe2217a969f_1970F3144B6221D94A.png','1970F3144B6221D94A.png'),(50,105,'ec069e83-ee0c-4715-a0d2-a3d08bdf971d_3.PNG','3.PNG'),(51,105,'120469b1-99f8-4e3b-ade0-c5a5befef01e_4.PNG','4.PNG'),(52,105,'8960dced-c035-4781-b4bb-885988e1f0f3_5.PNG','5.PNG'),(53,106,'c3f49073-8d85-463d-8a56-d85cee86d753_index_pic6.png','index_pic6.png'),(60,117,'313a4c86-0372-4e12-9b6e-72d869c73f22_5.PNG','5.PNG'),(61,117,'e9037d9a-67da-4d19-b9d1-8a4ae832b31b_1970F3144B6221D94A.png','1970F3144B6221D94A.png'),(62,117,'75f39709-9e55-41de-a3c9-35cbf5fd026e_캡처.PNG','캡처.PNG'),(63,117,'99e59c76-4525-4c8a-81d1-cda68aee0747_2014-06-11_21;10;54.jpg','2014-06-11_21;10;54.jpg'),(64,117,'6522f9cd-b0b2-4c88-b5e1-f6519837f105_hadoop.PNG','hadoop.PNG'),(66,134,'9c6c20d8-5635-4241-b48f-06fcaf511c11_＊마일리지항공권 양도 위임장(online)_kr 201707.pdf','＊마일리지항공권 양도 위임장(online)_kr 201707.pdf'),(67,134,'040998f3-a3be-4052-93e8-1ffbbcc5f9b1_Club_Merbership_Form_ko.pdf','Club_Merbership_Form_ko.pdf'),(68,129,'bf0430cc-0937-4af3-b485-afb5122dd908_ACC 마일리지항공권 사용승인서(online)_KR.pdf','ACC 마일리지항공권 사용승인서(online)_KR.pdf'),(69,135,'44fe2736-1998-4186-b237-ef4e113daa83_＊마일리지항공권 양도 위임장(online)_kr 201707.pdf','＊마일리지항공권 양도 위임장(online)_kr 201707.pdf'),(70,135,'44fe2736-1998-4186-b237-ef4e113daa83_＊마일리지항공권 양도 위임장(online)_kr 201707.pdf','＊마일리지항공권 양도 위임장(online)_kr 201707.pdf'),(71,135,'44fe2736-1998-4186-b237-ef4e113daa83_＊마일리지항공권 양도 위임장(online)_kr 201707.pdf','＊마일리지항공권 양도 위임장(online)_kr 201707.pdf'),(73,120,'b84ffd6e-5995-45c0-9649-ee7a0ed25089_2014-06-11_21;10;54.jpg','2014-06-11_21;10;54.jpg'),(75,120,'15ee18ff-9859-44cc-837f-bfda4e6ed022_717198878e06623c7cca1a762a97db12.jpg','717198878e06623c7cca1a762a97db12.jpg'),(77,120,'5d08c07d-7a2a-4e16-a65c-2d20ec8b7ba7_3.PNG','3.PNG');
/*!40000 ALTER TABLE `noticeFiles` ENABLE KEYS */;
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
